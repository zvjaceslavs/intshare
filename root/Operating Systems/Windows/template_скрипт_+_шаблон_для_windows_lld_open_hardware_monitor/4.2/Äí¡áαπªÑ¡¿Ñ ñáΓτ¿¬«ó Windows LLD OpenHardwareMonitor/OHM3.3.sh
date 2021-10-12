#!/bin/bash
#2019/12/07 v3.3
#При работе скрипта вся нагрузка выполнения ложится на ресурсы железа Заббикс Сервера!
#Скрипт мониторинга для OpenHardwareMonitor с LLD для Zabbix (серверный вариант)
# Автор Мамзиков Артём Андреевич Описание по скрипту https://diyit.ru/viewtopic.php?f=48&t=71&p=121#p121

#Автообнаружение параметров из OpenHardwareMonitor
#Ключ: discovery , info

# $1 - это IP и порт узла подключаемого агента
# $2 - Поиск элементов вывод JSON data, info

IFS=$'\n'
JSON="{\"data\":["
SEP=""

if [[ $2 = "discovery" ]]
then
get=`zabbix_get -s $1 -k system.run["WMIC.exe /NAMESPACE:\\\\\root\OpenHardwareMonitor PATH Sensor"]`
# если требуется включение " двойных кавычек, то они должны быть экранированы обратной наклонной чертой \ потому так много слешей верху нужно по сути 2
# Запуск переменной get команды OpenHardwareMonitor

# Запрос имен и типа  железа
gethd=`zabbix_get -s $1 -k system.run["WMIC.exe /NAMESPACE:\\\\\root\OpenHardwareMonitor PATH Hardware"]`

# Оставляем нужные нам слобцы по железу (делаем между ними 2 пробела)
obrtablhd=$(echo "${gethd}" 2>/dev/null|awk NR\>1|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $1"  "$2"  "$4}')

# Пришлось сделать отдельную переменую так как в родитель попадает параметр Процесс ИД когда столбец родитель пустой
# С последним столбцом по железу (делаем между ними 2 пробела)
obrhartabl=$(echo "${gethd}" 2>/dev/null|awk NR\>1|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $1"  "$2"  "$4"  "$5"  "$6}')

# Выбираем родителя датчика который показывает параметры смотрим 2 и 5 таблицу
tablparent=$(echo "${gethd}" 2>/dev/null|awk NR\>1|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $2"  "$5}')

# Если ошибка в черную дыру | удаление первой строки шапки таблицы | Поиск строк более чем 2 пробела, за которой следовал не пробел,
# добавил разделители табуляции, обработка первой строки данных | вывод 3 6 и 9 (можно 9 так $(NF-2)но последняя строка с таблицы работает не так как надо) стoлбцов
obrtabl=$(echo "${get}" 2>/dev/null|awk NR\>1|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $3"  "$6"  "$7"  "$8"  "$9}')

# Если нужно не выводить поиск элементов в которых именах присутствует # раскомментировать строку ниже, а выше закомментировать
#obrtabl=$(echo "${get}" 2>/dev/null|awk NR\>1|sed -E '/#/d'|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $3"  "$6"  "$7"  "$8"  "$9}')

# А если нужно выбрать только строки с определеными параметрами например температуру напряжение
#obrtabl=$(echo "${get}" 2>/dev/null|awk NR\>1|grep -E 'Temperature|Voltage'|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $3"  "$6"  "$7"  "$8"  "$9}')

#Вывод для тестов настроек
#echo "${get}"
#echo "${obrtabl}"
#echo "${obrtablhd}"

fi
for element in $(echo "${obrtabl}" 2>/dev/null);
# 1 шаг Перебор строк в таблице в переменную element если ошибка отправка в черную дыру
do
# 2 шаг каждый столбец идет для своей переменной
# Получаем Идентифика́торы номера ID датчиков первый столбец
InstanceId=`echo "${element}"|awk '{print $1}'`
# Получаем имена датчиков средний 2 столбец самый муторный из-за пробелов)
Name=$(echo "${element}"|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $2}'|sed 's/[ \t]*$//')
# Получаем категорию/группу датчиков последний столбец
SensorType=`echo "${element}" |awk '{print $(NF)}'`
# Получаем Parent для подстановки имен железа
Parent=`echo "${element}"|awk '{print $(NF-2)}'`
# Добавление проверки по ИД для серверов 2 процессора иначе оба имени попадают в один ответ(
Processid=`echo "${element}"|awk '{print $(NF-1)}'`

# Получаем Тип оборудования работа со 2 таблицей
HardwareType=`echo "${obrhartabl}"|grep -E "${Parent}".*"${Processid}"|awk '{print $1}'`
# Получаем имя железа (NF-1 или $3)
Namehd=$(echo "${obrhartabl}"|grep -E "${Parent}".*"${Processid}"|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $3}'|sed 's/[ \t]*$//')

# Выявляем родителя чипа датчиков если он есть
# Берем со 2 таблицы 2 и 5 столбец (хотя в 5 попадет 6) в сравнении со столбцом-7 1-таблицы получаем ответ 5 столбца 2 таблицы
sopost=`echo "${tablparent}"|grep -E "${Parent}"|awk '{print $2}'`
# Во второй таблице ищем соответсвие к имени из параметра выше
roditel=$(echo "${obrtablhd}"|grep -E "${sopost}"|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $(NF)}'|sed 's/[ \t]*$//')
# Тип родителя
rodtip=`echo "${obrtablhd}"|grep -E "${sopost}"|awk '{print $1}'`

# Модель Материнской платы выволить всегда mainboard
#mainboard=$(echo "${obrhartabl}"|grep -E  Mainboard.*/mainboard.*"${Processid}"|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $3}'|sed 's/[ \t]*$//')

# если есть родитель в  не учитываем материнку выйдет как родитель
if [ -z "${roditel}" ]; then
mainboard=$(echo "${obrhartabl}"|grep -E Mainboard.*/mainboard.*"${Processid}"|sed -E 's/  ([^ ])/\t\1/g; s/^1/1\t/;'|awk -F\\t '{print $3}'|sed 's/[ \t]*$//')
else
mainboard=
fi

JSON=$JSON"$SEP\n{\"{#ID}\":\"$InstanceId\", \"{#NAME}\":\"$Name\", \"{#SENSORTYPE}\":\"$SensorType\", \"{#HARDTYPE}\":\"$HardwareType\", \"{#HARDNAME}\":\"$Namehd\", \"{#RODITEL}\":\"$roditel\", \"{#RODTIP}\":\"$rodtip\", \"{#MAINBOARD}\":\"$mainboard\"}"
SEP=", "
done
# Выводим результат в json data
JSON=$JSON"\n]}"
echo -e $JSON

# Получение полной информации всей таблицы ./OHM.sh[{HOST.CONN},info] смысла в этом особого нет конечно, так как данные постоянно меняются смысл например запрашивать раз в сутки весь листинг но пусть будет)

#else
if [[ $2 = "info" ]]
then
get=`zabbix_get -s $1 -k system.run["WMIC.exe /NAMESPACE:\\\\\root\OpenHardwareMonitor PATH Sensor"]`
for out in $get
do
echo "${out}"
done
#elif [[ $2 = "maxtemp" ]]
#then
#get1= запрос с фильтраций только температура
#maxc= выбор максимального значения по температуре
#for out in $maxc
#do
#do
#echo $out
#done
fi

