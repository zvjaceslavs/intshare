#!/bin/bash
#2019/11/28 v2.0
#При работе скрипта вся нагрузка выполнения ложится на ресурсы железа Заббикс Сервера!
#Скрипт мониторинга для OpenHardwareMonitor с LLD для Zabbix (серверный вариант)

#Автообнаружение параметров из OpenHardwareMonitor
#Ключ: discovery

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

# Если ошибка в черную дыру | удаление первой строки шапки таблицы | Оставляем только 3 таблицу с ID InstanceId
obrtabl=$(echo "${get}" 2>/dev/null|awk NR\>1|awk '{print $3}')

# Если нужно не выводить поиск элементов в которых именах присутствует # раскомментировать строку ниже, а выше закомментировать
#obrtabl=$(echo "${get}" 2>/dev/null|awk NR\>1|awk '{print $3}')

#Вывод для тестов настроек
#echo "${get}"
#echo "${obrtabl}"

fi
for element in $(echo "${obrtabl}" 2>/dev/null);
# 1 шаг Перебор строк в таблице в переменную element если ошибка отправка в черную дыру
do
# 2 шаг для каждого ID элемента запрашиваем имя и категорию
# Получаем Идентифика́торы номера ID датчиков первый столбец
InstanceId=`echo "${element}"|awk '{print $1}'`
# Получаем имена датчиков
Name=`zabbix_get -s $1 -k system.run["WMIC.exe /NAMESPACE:\\\\\root\OpenHardwareMonitor PATH Sensor WHERE "InstanceId=${InstanceId}" GET Name"]|tr -d '\n'| cut -f2- -d'Name'`
# Получаем категорию/группу датчиков
#SensorType=`zabbix_get -s $1 -k system.run["WMIC.exe /NAMESPACE:\\\\\root\OpenHardwareMonitor PATH Sensor WHERE "InstanceId=${InstanceId}" GET SensorType"]`
JSON=$JSON"$SEP{\"{#InstanceId}\":\"$InstanceId\", \"{#Name}\":\"$Name\", \"{#SensorType}\":\"$SensorType\"}"
SEP=", "
done
# Выводим результат в json data
JSON=$JSON"]}"
echo $JSON

# Получение полной информации всей таблицы ./OHM.sh[{HOST.CONN},info] смысла в этом особого нет конечно, так как данные постоянно меняются смысл например за$

#else
#if [[ $2 = "info" ]]
#then
#get=`zabbix_get -s $1 -k system.run["WMIC.exe /NAMESPACE:\\\\\root\OpenHardwareMonitor PATH Sensor"]`
#for out in $get
#do
#echo "${out}"
#done
#elif [[ $2 = "maxtemp" ]]
#then
#get1=
#maxc=
#for out in $maxc
#do
#do
#echo $out
#done
#fi
