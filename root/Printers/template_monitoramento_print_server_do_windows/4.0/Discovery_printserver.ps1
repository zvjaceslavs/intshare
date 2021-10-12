#Set-ExecutionPolicy Unrestricted
#Timeout=30
#UnsafeUserParameters=1
#UserParameter=discovery.print[*],powershell.exe -noprofile -executionpolicy bypass -File "C:\Program Files\Zabbix Agent\scripts\Discovery_printserver.ps1" $1 $2

Param(
  [string]$DESCOBERTA,
  [string]$NOME
)

Import-Module PrintManagement

# DESCOBERTA EM LLD DE IMPRESSORAS COMPARTILHADAS
if ( $DESCOBERTA -eq 'DISCOVERY' )
{
Import-Module PrintManagement
$comando = Get-Printer | Where-Object {$_.Shared -like "True"} | Select-Object Name
$2mti = 1
write-host "{"
write-host " `"data`":[`n"
foreach ($listao in $comando)
{
    if ($2mti -lt $comando.Count)
    {
        $line= "{ `"{#IMPRESSORAS}`":`"" + $listao.Name+ "`"},"
        write-host $line
    }
    elseif ($2mti -ge $comando.Count)
    {
    $line= "{ `"{#IMPRESSORAS}`":`"" + $listao.Name+ "`"}"
    write-host $line
    }
    $2mti++;
}
write-host
write-host " ]"
write-host "}"
}

#FUNCAO PARA BUSCAR O NOME DA IMPRESSORA
if ($DESCOBERTA -eq 'NOME'){

Import-Module PrintManagement
Get-Printer | Where-Object {$_.Name -like "$Nome"} | Select-Object -ExpandProperty Name

}

#FUNCAO PARA BUSCAR O IP DA IMPRESSORA
if ($DESCOBERTA -eq 'IP'){

Import-Module PrintManagement
Get-Printer | Where-Object {$_.Name -like "$Nome"} | Select-Object -ExpandProperty PortName

}

#FUNCAO PARA BUSCAR O DRIVER DA IMPRESSORAS
if ($DESCOBERTA -eq 'DRIVER'){

Import-Module PrintManagement
Get-Printer | Where-Object {$_.Name -like "$Nome"} | Select-Object -ExpandProperty DriverName

}

#FUNCAO PARA BUSCAR HISTORICO DE DOCUMENTOS IMPRESSOS
#
if ($DESCOBERTA -eq 'HISTORICO'){

Import-Module PrintManagement
Get-PrintJob -PrinterName "$Nome" | Where-Object {$_.PrinterName -like "$Nome"} | Select-Object -ExpandProperty DocumentName

}

#FUNCAO PARA BUSCAR O STATUS DA IMPRESSORA
#Status: No Error (0,2),Low Paper (3),No Paper (4), Low Toner (5), No Toner (6), Door Open (7), Offline (9)
 
if ($DESCOBERTA -eq 'STATUS'){

get-wmiobject win32_printer | Where-Object {$_.Name -like "$Nome"} | Select-Object -ExpandProperty DetectedErrorState

}