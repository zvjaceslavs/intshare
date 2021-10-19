# Template OS Windows Server

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|discovery Interface|<p>Обнаружение сетевых интрефейсов</p>|`Zabbix agent`|net.if.discovery<p>Update: 24h</p>|
|discovery local disk|<p>Обнаружение дисков</p>|`Zabbix agent`|vfs.fs.discovery<p>Update: 24h</p>|
|discovery service|<p>Обнаружение служб Windows</p>|`Zabbix agent`|service.discovery<p>Update: 24h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Memory Available (Physical) %|<p>Процент используемой физической памяти</p>|`Calculated`|MemoryAvailablePhysicalProc<p>Update: 1m</p>|
|Проверка по ICMP (ping)|<p>-</p>|`Simple check`|icmpping<p>Update: 1m</p>|
|Process Total Private Bytes|<p>показывает объем выделенной памяти для процесса. Если сумма всех private bytes для всех процессов превысит предел памяти, описанный выше, это значит, что в системе образовалась нехватка памяти и приложения будут отказывать</p>|`Zabbix agent`|perf_counter["\Process(_Total)\Private Bytes",300]<p>Update: 5m</p>|
|Processor Time|<p>Загруженность процессора в % (среднее значение за 1 минуту)</p>|`Zabbix agent`|perf_counter["\Processor(_Total)\% Processor Time",60]<p>Update: 1m</p>|
|Проверка Обновлений|<p>Если в системе нет установленных обновлений, то элемент данных станет не поддерживаемый. Так как скрипт выдает ошибку. Для работы нужно добавить в файл конфигурации zabbix агента и разместить PS скрипт в папке. #UpdateWindows UserParameter=Update, PowerShell.exe -File "C: Program Files Zabbix lastDateUpdate.ps1"</p>|`Zabbix agent`|system.run["PowerShell.exe [int][double]::Parse((Get-Date((Get-ItemProperty -Path Registry::'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update\Results\Install').LastSuccessTime) -UFormat %s))"]<p>Update: 4h</p>|
|Processor Context Switches|<p>в многозадачных ОС и средах - процесс прекращения выполнения процессором одной задачи (процесса, потока, нити) с сохранением всей необходимой информации и состояния, необходимых для последующего продолжения с прерванного места, и восстановления и загрузки состояния задачи, к выполнению которой переходит процессор.</p>|`Zabbix agent`|perf_counter["\System\Context Switches/sec",60]<p>Update: 1m</p>|
|Memory Available Bytes|<p>-</p>|`Zabbix agent`|perf_counter["\Memory\Available Bytes",60]<p>Update: 1m</p>|
|Проверка Cертификата|<p>-</p>|`Zabbix agent`|system.run[Powershell.exe "& {(Get-ChildItem -Path cert: -Recurse -ExpiringInDays 45 | where {$_.PSPath -notmatch 'Remote Desktop' -and $_.PSPath -notmatch 'Operations Manager'}).subject}"]<p>Update: 4h</p>|
|Memory Commit Limit|<p>показывает максимальный объем памяти, который может быть выделен системой. Обычно это фиксированная величина, которая определяется операционной системой</p>|`Zabbix agent`|perf_counter["\Memory\Commit Limit",300]<p>Update: 5m</p>|
|Memory Committed Bytes In Use %|<p>Соотношение величин счетчиков Commited Bytes и Commit Limit. Следя за счетчиком %Committed Bytes In Use, можно увидеть, что при достижении им величины 100% система начнет увеличивать размеры файла подкачки, пытаясь удовлетворить растущие запросы на память.</p>|`Zabbix agent`|perf_counter["\Memory\% Committed Bytes In Use",300]<p>Update: 5m</p>|
|Системное время UTC|<p>-</p>|`Zabbix agent`|system.localtime[utc]<p>Update: 1m</p>|
|Processor Queue Length|<p>Показания счетчика действительно очень важны для поиска проблем с производительностью процессора. Постоянное наличие большой очереди запросов к ЦП явно свидетельствует о том, что процессор не справляется с обработкой данных и является узким местом.</p>|`Zabbix agent`|perf_counter["\System\Processor Queue Length",60]<p>Update: 1m</p>|
|Memory Capacity (Physical) Bytes|<p>Размер физической памяти</p>|`Zabbix agent`|system.run[Powershell.exe "((Get-WmiObject Win32_PhysicalMemory).Capacity | Measure-Object -Sum).Sum"]<p>Update: 24h</p>|
|Проверка статуса Firewall|<p>Для работы нужно добавить в файл конфигурации zabbix агента #CheckFirewall UserParameter=CheckFirewall, PowerShell.exe "(Get-NetFirewallProfile -Profile Domain,Public,Private).enabled"</p>|`Zabbix agent`|CheckFirewall<p>Update: 4h</p>|
|Interface:{#IFNAME}, Received Bytes/sec|<p>-</p>|`Zabbix agent`|perf_counter["\Network Interface({#IFNAME})\Bytes Received/sec",60]<p>Update: 1m</p>|
|Interface:{#IFNAME}, Sent Bytes/sec|<p>-</p>|`Zabbix agent`|perf_counter["\Network Interface({#IFNAME})\Bytes Sent/sec",60]<p>Update: 1m</p>|
|Interface:{#IFNAME}, Current Bandwidth|<p>-</p>|`Zabbix agent`|perf_counter["\Network Interface({#IFNAME})\Current Bandwidth",]<p>Update: 24h</p>|
|Interface:{#IFNAME}, Output Queue Length|<p>Счетчик фиксирует длину очереди исходящих пакетов адаптера. Приемлемыми считаются значения 1 и 2. Но если этот показатель часто достигает уровня 3, 4 или более высоких отметок, это значит, что сетевой адаптер ввода/вывода не справляется с запросами сервера на передачу данных в сеть.</p>|`Zabbix agent`|perf_counter["\Network Interface({#IFNAME})\Output Queue Length",300]<p>Update: 5m</p>|
|Interface:{#IFNAME}, Utilization Received|<p>-</p>|`Calculated`|UtilizationReceived.[{#IFNAME}]<p>Update: 1m</p>|
|Interface:{#IFNAME}, Utilization Sent|<p>-</p>|`Calculated`|UtilizationSent.[{#IFNAME}]<p>Update: 1m</p>|
|LogicalDisk {#FSNAME} Disk Time %|<p>Тип файловой системы:{#FSTYPE} Тип диска:{#FSDRIVETYPE} Счетчик отображает, какую часть времени диск расходует на обслуживание запросов на чтение и запись. Если его значения стабильно сохраняются на уровне вблизи отметки 100%, система работает с диском весьма интенсивно. Если же идет постоянный активный обмен данными и при этом создаются большие очереди, возможно, что дисковая подсистема не справляется с нагрузкой. В типичных условиях эксплуатации значение этого счетчика не должно превышать 50.</p>|`Zabbix agent`|perf_counter["\LogicalDisk({#FSNAME})\% Disk Time",300]<p>Update: 5m</p>|
|LogicalDisk {#FSNAME} Free Space|<p>Тип файловой системы:{#FSTYPE} Тип диска:{#FSDRIVETYPE}</p>|`Zabbix agent`|perf_counter["\LogicalDisk({#FSNAME})\% Free Space",300]<p>Update: 5m</p>|
|LogicalDisk {#FSNAME} Avg. Disk Queue Length|<p>Тип файловой системы:{#FSTYPE} Тип диска:{#FSDRIVETYPE} Показатель этого счетчика отражает среднее число ожидающих обработки запросов к диску на ввод и вывод данных. Если он стабильно выше 2, значит, в диске образовался «затор».</p>|`Zabbix agent`|perf_counter["\LogicalDisk({#FSNAME})\Avg. Disk Queue Length",60]<p>Update: 1m</p>|
|Состояние службы {#SERVICE.DISPLAYNAME}|<p>Описание: {#SERVICE.DESCRIPTION}</p>|`Zabbix agent`|service.info[{#SERVICE.NAME}]<p>Update: 3m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Committed Bytes In Use > 85%|<p>Предел выделенной памяти будет расти, если общий объем выделенной памяти приблизится к 90% от предельного значения — если же значение достигнет 95%, то предел вероятно перестанет расти, и появится вероятность возникновения ошибки OutOfMemory. Как только объем выделенной памяти достигнет предела, то система больше не сможет выделять память для процессов. Большинство процессов не справится с данным поведением системы и прекратят свое выполнение. Поэтому очень важно следить за этим счетчиком.</p>|average|
|Fuzzytime > 1s|<p>Разница в системном времени между хостом и сервером Zabbix больше 1 сек Проверьте состояние службы времени в ОС Полезные команды: w32tm /resync - выполнение синхронизации времени w32tm /resync /rediscover - Принудительная синхронизация от источника w32tm /query /peers - Отображение текущих источников синхронизации и их статуса w32tm /config /update - Применение внесенных в конфигурацию изменений w32tm /monitor - Отображение состояния синхронизации контроллеров домена в домене net stop w32time - остановка службы net start w32time - запуск службы</p>|high|
|Fuzzytime > 5s|<p>Разница в системном времени между хостом и сервером Zabbix больше 5 сек Проверьте состояние службы времени в ОС Полезные команды: w32tm /resync - выполнение синхронизации времени w32tm /resync /rediscover - Принудительная синхронизация от источника w32tm /query /peers - Отображение текущих источников синхронизации и их статуса w32tm /config /update - Применение внесенных в конфигурацию изменений w32tm /monitor - Отображение состояния синхронизации контроллеров домена в домене net stop w32time - остановка службы net start w32time - запуск службы</p>|disaster|
|Memory Available (Physical) > 85% (5 min)|<p>ОС использует > 85% от физической памяти более 5 минут</p>|warning|
|Memory Available (Physical) > 95% (5 min)|<p>ОС использует > 95% от физической памяти более 5 минут Если объем доступной памяти слишком мал, есть вероятность, что система начнет использовать для активных процессов файл подкачки. Если системе не хватает физической памяти, то результатом этого могут быть значительные задержки и/или полное зависание системы</p>|high|
|Processor Queue Length > 4 (5 min)|<p>Обратите внимание на Processor Queue Length > 4 в течение 5 минут. Получите обратную связь от пользователей приложения. Если приложение работает нормально и пользователи не испытывают проблем при работе с ПО, нужно повысить пороговое значение. Но стоит подключиться к более глубокому анализу производительности ЦП как слабого места, разобраться в причине или увеличить ресурсы серверу.</p>|average|
|Processor Queue Length > 10 (3 min)|<p>Критическое значение очереди > 10 в течение 3 минут. Нужно разобраться в причине или увеличить ресурсы серверу.</p>|high|
|Processor Time > 85% (5 min)|<p>Нужно выяснить почему загружен процессор, если высокая загрузка связанна не с проблемами в работе приложений необходимо добавить ресурсов серверу.</p>|average|
|Processor Time > 85% (15 min)|<p>Нужно выяснить почему загружен процессор, если высокая загрузка связанна не с проблемами в работе приложений необходимо добавить ресурсов серверу.</p>|high|
|Process Total Private Bytes > Memory Commit Limit|<p>Process Private Bytes показывает объем выделенной памяти для процесса. Если сумма всех private bytes для всех процессов превысит предел памяти(Memory Commit Limit), это значит, что в системе образовалась нехватка памяти и приложения будут отказывать.</p>|high|
|Zabbix не смог получить данных о обновления в системе|<p>Проверите работу zabbix agenta, наличие скрипта powershell и ключа в файле конфигурации.</p>|information|
|Zabbix не смог получить данных о сертификатах|<p>Проверите работу элемента данных.</p>|information|
|Интерфейс узла сети не доступен (no ping)|<p>{HOST.IP}</p>|high|
|Обновления Windows не устанавливались > 3м|<p>Нужно согласовать установку обновлений на сервере. И провести установку обновлений. Обновления Windows не устанавливались более 3 месяцев</p>|information|
|Отключен firewall Windows|<p>{ITEM.LASTVALUE}</p>|warning|
|Проблема с сертификатом|<p>В системе есть сертификат срок действия которого истекает через 45 дней {ITEM.LASTVALUE} Проверьте сертификаты в системе. Имя сертификата можно узнать в меню Мониторинг > Последние данные.</p>|warning|
|Interface:{#IFNAME}, Output Queue Length > 3|<p>Счетчик фиксирует длину очереди исходящих пакетов адаптера. Приемлемыми считаются значения 1 и 2. Но если этот показатель часто достигает уровня 3, 4 или более высоких отметок, это значит, что сетевой адаптер ввода/вывода не справляется с запросами сервера на передачу данных в сеть.</p>|warning|
|Interface:{#IFNAME}, Utilization Received > 50%|<p>Utilization Received = {ITEM.LASTVALUE}</p>|information|
|Interface:{#IFNAME}, Utilization Received > 90%|<p>Utilization Received = {ITEM.LASTVALUE}</p>|high|
|Interface:{#IFNAME}, Utilization Sent > 50%|<p>Utilization Sent = {ITEM.LASTVALUE}</p>|information|
|Interface:{#IFNAME}, Utilization Sent > 90%|<p>Utilization Sent = {ITEM.LASTVALUE}</p>|high|
|LogicalDisk {#FSNAME} Avg. Disk Queue Length > 2 (15 min)|<p>Среднее значение за 15 минут > 2 Показатель этого счетчика отражает среднее число ожидающих обработки запросов к диску на ввод и вывод данных. Если он стабильно выше 2, значит, в диске образовался «затор».</p>|warning|
|LogicalDisk {#FSNAME} Avg. Disk Queue Length > 10 (3 min)|<p>Среднее значение за 3 минут > 10 Показатель этого счетчика отражает среднее число ожидающих обработки запросов к диску на ввод и вывод данных. Если он стабильно выше 10, значит, у системы серьезные проблема с производительностью диска.</p>|high|
|LogicalDisk {#FSNAME} Free Space < 5%|<p>-</p>|high|
|LogicalDisk {#FSNAME} Free Space < 15%|<p>-</p>|average|
|Состояние службы {#SERVICE.DISPLAYNAME} = {ITEM.LASTVALUE}|<p>Состояние службы {#SERVICE.DISPLAYNAME} = {ITEM.LASTVALUE} Если отслеживать состояние службы не нужно, просто отключите триггер</p>|high|
