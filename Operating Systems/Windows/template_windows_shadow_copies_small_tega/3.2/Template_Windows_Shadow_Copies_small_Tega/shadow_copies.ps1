#version 1.1
#peremena version
#Tega Ltd.
###Проверка теневых копий


#названия ключей и их значения по умолчанию
#Name - Win32_Volume.name имя устройства вида C:\, если буква не назначена, то вида \\?\Volume{e55fd581-b220-11e4-824e-806e6f6e6963}\
#DeviceID - Win32_Volume.deviceID ID устроства вида \\?\Volume{e55fd581-b220-11e4-824e-806e6f6e6963}\ 
#DriveLetter Win32_Volume.DriveLetter - буква устройства вида C: или пустая строка, если буква не назнечена
#ShadowCopiesOn - 1 если создание копий включено, 0 - если создание копий выключено
#DiffVolume - DiffVolume.name Win32_ShadowStorage.DiffVolume.Name Win32_Volume.name Буква или DeviceID куда делаются теневые копии. Теневые копии могут делаться на отличный том. 
#AllocatedSpace Win32_ShadowStorage.AllocatedSpace выделнное место под теневые копии
#UsedSpace Win32_ShadowStorage.UsedSpace использованное место под локальные копии
#MaxSpace Win32_ShadowStorage.MaxSpace маскимальное место под теневые копии
#UsedPercentage (UsedSpace/AllocatedSpace)*100
#Count количество теневых копий
#InstallDate наиболее свежая теневая копия
#Date дата создания теневой копии
#AgeInHours возраст теневой копии в часах


[CmdletBinding()]
Param (
[Parameter(Mandatory=$false)]
[int64]$minVolumeSize=10000000000,

[Parameter(Mandatory=$false)]
[string]$SearchKey="",

[Parameter(Mandatory=$false)]
[string]$SearchValue="",

[Parameter(Mandatory=$false)]
[string]$PrintKey="",

[Parameter(Mandatory=$false)]
[String]
$SelectedKeys="",


[Parameter(Mandatory=$false)]
[int64]
$Cache=0,

[Parameter(Mandatory=$false)]
[String]
$CacheFile="",

[Parameter(Mandatory=$false)]
[switch]
$Help,

[Parameter(Mandatory=$false)]
[switch]
$DebugPrint
)

#$DebugPrint=1

#подключаем библиотеку
try {

    . ".\liboutput.ps1"
} catch {
    "Library is not found"
    exit;
}

#создаем новый экземпляр объекта
$ShadowCopies=$LibOutput.psobject.copy()



$ShadowCopies.DefaultKeys=@{'Name'="";'DeviceID'="";'DriveLetter'=""; 'ShadowCopiesOn'=0; 'DiffVolume'=""; 
                            'AllocatedSpace'=0; 'UsedSpace'=0; 'MaxSpace'=0; 'UsedPercentage'=-1; 'Count'=0; 
                            'InstallDate'=""; 'Date'="";'AgeInHours'=0; 'AllocatedPercentage'=-1}


#Печатаем помощь и выходим
if ($Help) {
    "Parametrs:"
    
    
    $MyInvocation.mycommand.name + " [-Cache TTL] [-CacheFile file] [-minVolumeSize size]"
    $MyInvocation.mycommand.name + " [-Cache TTL] [-CacheFile file] [-minVolumeSize size] -SelectedKeys key1, key2, key3 and so on"
    $MyInvocation.mycommand.name + " [-Cache TTL] [-CacheFile file] [-minVolumeSize size] -SearchKey key -SearchValue value -PrintKey key1"
    $MyInvocation.mycommand.name + " -Help"
    ""
    "Without parametrs - Values is printed in JSON"
    "-SelectedKeys - Values of the selected keys is printed in JSON"
    "-SearchKey key -SearchValue value -PrintKey key1 - Value key1 is printed with key=value. Example: -SearchKey Name -SearchValue C:\ -PrintKey UsedSpace will be printed 4414046208"
    " "
    "-Cache - TTL cache data, seconds"
    "-CacheFile - cache file name. Default " + $MyInvocation.mycommand.name + ".xml"
    "-minVolumeSize - Minimal size volume"
    " "
    "-Help - this message"
    "-DebugPrint - debug information"
    " "
    "Keys and default value"
    $ShadowCopies.DefaultKeys;
    exit;
}



$aSelectedKeys=@()


#если необходимо напечатать несколько ключей из всего множества, то их передаем как значения ключа -SelectedKeys через запятые
#-SelectedKeys name, driveletter
if ($SelectedKeys) {
    $aSelectedKeys=@($SelectedKeys.Split(","))
    for ($i=0; $i -lt $aSelectedKeys.count;$i++) {
        $aSelectedKeys[$i]=$aSelectedKeys[$i].trim();
    }

}

#Если нужно вывести одно значение определенного ключа для опредленной определнной пары ключ-значение
#Например, нужно вывести значение ключа "shadowcopyon" для ключа "drive" со значение "c:\"
#то указываем
#-SearchKey drive -SearchValue c:\ -PrintKey shadowcopyon
#тогда будет напечатано значение ключа shadowcopyon при drive=c:\

$ShadowCopies.SearchKey=$SearchKey
$ShadowCopies.SearchValue=$SearchValue
$ShadowCopies.PrintKey=$PrintKey
#список ключей, если печатаем не все ключи, только указанные
$ShadowCopies.SelectedKeys=$aSelectedKeys
#время акутальности кэша. Если разница между временем записи и временем обращение больше чем указано, то данные запрашиваются заново, иначе берутся из файла кэша
$ShadowCopies.Cache=$Cache
#имя файла кэша
if ($CacheFile -eq "") {
    $ShadowCopies.CacheFile=$MyInvocation.mycommand.name+".xml"  
} else {
    $ShadowCopies.CacheFile=$CacheFile
}



#метод которые заменяет стандартный Get в MainHashRename. Собственно, здесь и получают данные

#первый аргумент метода размер, меньше которого устройства не рассматриваются.
$ShadowCopies|Add-Member -MemberType ScriptMethod -Name "Get" -Force -Value {
    
    #минимально интересный размер устройства, аргумент метода
    $ms=1
    if ($args[0]) {
        $ms=[int64]([string]$args[0])
    }
    
    #получаем все тома, которые поддерживаются теневое копирование
    $ShadowVolumeSupport=get-wmiobject -Class win32_ShadowVolumeSupport

    #идем по всем отношениям "том поддерживающий теневое копирование - провайдер теневого копирования"
    foreach ($svs in $ShadowVolumeSupport) {
        

        #если провайдер не системный, то не рассматриваем
        if (([wmi]$svs.Antecedent).Type -ne 1) {
            continue
        }
    
        #сохраняем объекты, содержищиеся в ассоциированном классе win32_shadowvolumesupport 
        #сохраняем том
        $Volume=[wmi]$svs.Dependent
        
        #сохраняем провайдера теневых копий
        $ShadowProvider=[wmi]$svs.Antecedent

        #Если рассматриваемые том меньшего объема, чем указан
        if ($Volume.Capacity -lt $ms) {
            continue;
        }
        
        #создаем новый элемент списка как хеш DefaultKeys
        $this.CreateHash()
        
        ###из volume заполняем некоторые значения хэша
        $this.SetValue("Name",$Volume.Name)
        $this.SetValue("DeviceID",$Volume.DeviceID)
	$this.SetValue("DriveLetter",$Volume.DriveLetter)

	#$Volume.Name
	#$Volume.DeviceID
        #получаем ссылающийся на класс win32_volume класс win32_shadowstorage. Класс win32_shadowstorage связывает том для которого делаются теневые копии и том, на котором хранятся теневые копии
        #из самого объекта win32_shadowstorage получаем информацию о выделенном пространстве под теневые копии, максимальном пространстве и использованном пространстве под теневые копии
        $ShadowStorage=%{Get-WmiObject -Query "REFERENCES OF {Win32_volume.DeviceID=`"$($volume.DeviceID.replace('\','\\'))`"} WHERE ResultClass=Win32_ShadowStorage"}
        
       
	#если полученный объект не пустой и выделенное место больше 0, то считаем, что создание копий включено
        if ($ShadowStorage -and $ShadowStorage.AllocatedSpace -gt 0) {
            $this.SetValue("ShadowCopiesOn",1)
            
        } else {
            $this.SetValue("ShadowCopiesOn",0)
	    continue
        }
        #$Volume.DeviceID
	#$Volume.DriveLetter
	#$this.GetValue("ShadowCopiesOn")

        #получаем объект Win32_Volume для того тома, на котором хранятся теневые копии. Они могу не совпадать с томом для которого делаются теневые копии.
        $DiffVolume=[wmi]$ShadowStorage.DiffVolume

        ###из ShadowStorage 
        $this.SetValue("UsedSpace",$ShadowStorage.UsedSpace)
        $this.SetValue("AllocatedSpace",$ShadowStorage.AllocatedSpace)
        $this.SetValue("MaxSpace",$ShadowStorage.MaxSpace)
	
        try {
            $this.SetValue("UsedPercentage",[math]::round((($ShadowStorage.UsedSpace/$ShadowStorage.AllocatedSpace)*100),0))
        }
        catch {
            #$ShadowCopies.ValueInsert("ShadowCopyUsedPercentage",100)
        }

        try {
            $this.SetValue("AllocatedPercentage",[math]::round((($ShadowStorage.MaxSpace/$Volume.Capacity)*100),0))
            #$this.SetValue("AllocatedPercent",$Volume.Capacity)
        }
        catch {
            #$ShadowCopies.ValueInsert("ShadowCopyUsedPercentage",100)
        }

    
        

        #получаем DeviceID тома на котором хранятся теневые копии
        $this.SetValue("DiffVolume",$DiffVolume.Name)
        
        #####Получаем Win32_ShadowCopy, который содержит свойства теневых копий через ассоциированный класс Win32_ShadowFor.
        #Класс Win32_ShadowFor связывает Win32_Volume для тома на котором хранятся теневые копии и класс Win32_ShadowCopy, который содержит свойства теневых копиий.
        
        $sc=%{Get-WmiObject -Query "Associators Of {Win32_volume.DeviceID=`"$($volume.DeviceID.replace('\','\\'))`"} WHERE AssocClass=Win32_ShadowFor"}
    
        $count=0
        #бежим по копиям, их можно посчитать и найти наиболее свежую
        foreach ($s in $sc) {
            $count++
            
            if ($this.GetValue("InstallDate") -lt $s.InstallDate) {
                    $this.SetValue("InstallDate",$s.InstallDate)
              }
              
        }
    
        $this.SetValue("Count",$count)
        
        
        $di=$this.GetValue("InstallDate") -replace "\..+$",""
        
        #конвертация даты
        $d=New-Object DateTime
        if ([datetime]::tryparseexact($di,'yyyyMMddHHmmss',[System.Globalization.CultureInfo]::InvariantCulture, [System.Globalization.DateTimestyles]::None, [ref]$d)){
            $this.SetValue("Date",$d.ToString())
        }
        
        #возраст теневой копии в часах
        $this.SetValue("AgeInHours",[math]::round((((Get-Date)-$d).totalhours),0))
    }
}




#получение данных через getdata
#может принимать список неименованных параметров. Данные получаются либо из кэша, либо из переопределенного выше метода get
$ShadowCopies.GetData($minVolumeSize)

#формируем строку вывода
$ShadowCopies.PrintOutputStr()
#выводим строку
#$ShadowCopies.OutputStr

if ($DebugPrint) {
	$ShadowCopies.DebugOutput()
}




