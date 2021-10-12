#version 1.2


$needVersion=3
#основной объект содержит все остальные поля и методы.
#список хэшей в котором хранятся значения
$LibOutput = new-object psobject
#хеш с необходимыми ключами и их значениями по умолчанию
$LibOutput|Add-Member -MemberType NoteProperty  -Name DefaultKeys @{}
#список хэшей, здесь как раз хранятся 1-й, 2-й и так далее элеметы. То есть, список, который содержит хэши
$LibOutput|Add-Member -MemberType NoteProperty  -Name HashesList @()

#список полей хэша для вывода
$LibOutput|Add-Member -MemberType NoteProperty  -Name SelectedKeys @()



#список полей для вывода. Содержатся преобразованные имена ключей в формате необходимом для zabbix. Например, ключ key преобразуется в #KEY
$LibOutput|Add-Member -MemberType NoteProperty  -Name TransformedKeys @()

#строка для вывода Json
$LibOutput|Add-Member -MemberType NoteProperty  -Name JsonStr ""

#имя поля, ключа по которому ищется нужная строка в HashesList
$LibOutput|Add-Member -MemberType NoteProperty  -Name SearchKey ""
#значение поля, ключа по которому ищется нужная строка в HashesList
#только при совпадении ключ-значение будет искаться нужное значение для вывода
$LibOutput|Add-Member -MemberType NoteProperty  -Name SearchValue ""

#имя поля, значение которого будет выводиться
$LibOutput|Add-Member -MemberType NoteProperty  -Name PrintKey ""

#строка для вывода только одного значения, столбца
$LibOutput|Add-Member -MemberType NoteProperty  -Name SingleStr ""

#строка для вывода, помещается либо JSON, либо одиночное значение
$LibOutput|Add-Member -MemberType NoteProperty  -Name OutputStr ""

#время валидности данных в кеше. Если 0, то кэш не используется
$LibOutput|Add-Member -MemberType NoteProperty  -Name Cache 0

#имя файла для хранения кэша
$LibOutput|Add-Member -MemberType NoteProperty  -Name CacheFile ""

#создание нового элемента, хэша в HashesList
$LibOutput|Add-Member -MemberType ScriptMethod -Name "CreateHash" -Value {
    $this.HashesList+= $this.DefaultKeys.Clone()
    #foreach ($i in $this.DefaultKeys) {
    #    ($this.HashesList[-1])[$i]=""
    #}
}

#вставка значения $val ключа $key в HashesList в хэш с индексом $index 
$LibOutput|Add-Member -MemberType ScriptMethod -Name "SetValueIndex" -Value {
   param(
          [Parameter(Mandatory=$True)]
          [Int64]$index,
          [Parameter(Mandatory=$True)]
          [string]$key,
          [Parameter(Mandatory=$True)]  
          [string]$val
       )
    
   if (($this.HashesList[$index]).ContainsKey($key)) {
        ($this.HashesList[$index])[$key]=$val
   } 
}

#вставка значения $val ключа $key в HashesList в хэш с самым большим индексом
$LibOutput|Add-Member -MemberType ScriptMethod -Name "SetValue" -Value {
   param(
          [Parameter(Mandatory=$True)]
          [string]$key,
          [Parameter(Mandatory=$True)]  
          [string]$val
       )
    
    $this.SetValueIndex(-1,$key,$val)
}

#получение значения ключа $key в HashesList в хэш с индексом $index 
$LibOutput|Add-Member -MemberType ScriptMethod -Name "GetValueIndex" -Value {
   param(
          [Parameter(Mandatory=$True)]
          [Int64]$index,
          [Parameter(Mandatory=$True)]
          [string]$key
          
       )
    
   if (($this.HashesList[$index]).ContainsKey($key)) {
        ($this.HashesList[$index])[$key]
   } 
}

#получение значения ключа $key в HashesList в хэш с самым большим индексом
$LibOutput|Add-Member -MemberType ScriptMethod -Name "GetValue" -Value {
   param(
          [Parameter(Mandatory=$True)]
          [string]$key
          
       )
    
   if (($this.HashesList[-1]).ContainsKey($key)) {
        ($this.HashesList[-1])[$key]
   } 
}



#подготовка JsonStr
$LibOutput|Add-Member -MemberType ScriptMethod -Name "PreparePrintJSON" -Value {
    $this.TransformedKeys = @()
    $keys=@()
   
    if ($this.SelectedKeys.Count -ne 0) {
        foreach ($i in $this.SelectedKeys) {
          if ($this.DefaultKeys.ContainsKey($i) -eq $true) {
                $keys+=$i
            } 
        }
    } else {
        $keys=$this.DefaultKeys.Keys.clone()

    }

#   $this.TransformedKeys=+@{}
    foreach ($i in $this.HashesList) {
        $this.TransformedKeys+=@{}
        
        foreach ($h in $keys) {
            ($this.TransformedKeys[-1])["{#"+$h.ToUpper()+"}"]=$i[$h]
        }
    }
    if ($this.TransformedKeys.Length -eq 0){
        $this.TransformedKeys = "[]";
    }
    #если в массиве один элемент, то добавляем квадратные скобки, иначе zabbix не воспримет	
    $leftBracket=""
    $rightBracket=""

    if ($this.TransformedKeys.length -eq 1) {
    	$leftBracket="["
        $rightBracket="]"
    }


    $this.JsonStr="{`"data`":"+$leftBracket+($this.TransformedKeys|ConvertTo-Json -compress)+$rightBracket+"}"
}

#возврат одного значения
#при SearchKey=SearchValue возвращаем значение для PrintKey
$LibOutput|Add-Member -MemberType ScriptMethod -Name "PreparePrintSingle" -Value {
    
    $this.SingleStr=""
    foreach ($h in $this.HashesList) {
        if (($h.ContainsKey($this.SearchKey)) -and ($h[$this.SearchKey] -eq $this.SearchValue) -and ($h.ContainsKey($this.PrintKey))) {
           $this.SingleStr+=$h[$this.PrintKey]
        }
    }

}

#для отладочного вывода
$LibOutput|Add-Member -MemberType ScriptMethod -Name "DebugOutput" -Value {
    
    foreach ($i in $this.TransformedKeys) {
        $i
        "-"
    }
}

#подготовка строки вывода OutputStr. Если установлены значения SearchKey, SearchValue и PrintKey, то выводится одиночное значение, иначе все значения в формате Json
$LibOutput|Add-Member -MemberType ScriptMethod -Name PrintOutputStr -Value {
    
    if (($this.SearchKey) -and ($this.SearchValue) -and ($this.PrintKey)) {
        $this.PreparePrintSingle()
        $this.OutputStr=$this.SingleStr
    } else { 

    $this.PreparePrintJSON()
    $this.OutputStr=$this.JsonStr
    }
    $this.OutputStr;
}

#чтение кэша
$LibOutput|Add-Member -MemberType ScriptMethod -Name "GetCache" -Value {       
   
    $this.HashesList= Import-Clixml $this.CacheFile  
   
}

#запись кэша
$LibOutput|Add-Member -MemberType ScriptMethod -Name "SetCache" -Value {    
    
    $this.HashesList|Export-Clixml $this.cachefile
}


#получение данных либо из кэша, либо из переопределенного пользователем метода Get
$LibOutput|Add-Member -MemberType ScriptMethod -Name "GetData" -Value {
   #вызывать ли Get. 0 нет 
   $gd=0 
   #если кэш не включен
   if ($this.Cache -eq 0) {
   #то вызываем
    $gd=1
   } else {
        #иначе пробуем получить данные из кэша
        $l=""
        $d=$this.cache
        try {
            $l=get-ChildItem $this.cachefile
            #если между нынешним моментом и последней записью в кэш-файл прошло меньше секунд, чем указано в $this.cachе, то берем данные из кэша. Иначе $gd=1
            $d=((get-date)-($l.LastWriteTime)).totalseconds
            if ($d -le $this.cache) {
                $this.GetCache()
            } else {
                $gd=1
            }
        } catch {
            #если ошибка обращения к файлу кэша, например, он не существует, то $gd=1    
            $gd=1
            
        }
    }
    #если cache отключен, не удалось прочитать файл кэша или кэш просрочен, то получаем данные при помощи Get(). Пользователю его необходимо переопределить. Get() передается список неименованных параметров, сам с ними работает.
    #просто все параметры переданные в Get-Data полностью передаются в Get
    if ($gd -eq 1) {
        $this.Get($args)
        #если режим кеширования включен, то записывем файл кэша
        if ($this.cache) {
            try {
                $this.SetCache()
            } catch {
            
            }

        }
    }
      
}

#метода предназначен для получения данных. Необходимо переопределить.
#экземпляр объекта MainHashRename|Add-Member -MemberType ScriptMethod -Name "Get" -Force -Value {}
#-Force обязательно
$LibOutput|Add-Member -MemberType ScriptMethod -Name "Get" -Value {
    "--"
}


if ($host.version.major -lt $needVersion) {
	try {
		Assert-True $false
	} catch {
		"Version power shell is:" 
		$host.version
		"Version must be great or equal:" 
		$needVersion
		Assert-True $false
	}
	
}

