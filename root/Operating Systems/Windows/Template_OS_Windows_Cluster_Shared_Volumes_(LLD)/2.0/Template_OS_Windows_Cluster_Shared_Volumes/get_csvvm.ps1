$csvvm = Get-WmiObject win32_PerfFormattedData_CsvVolumePerfProvider_ClusterCSVVolumeManager | Select Name
$idx = 1
write-host "{"
write-host " `"data`":[`n"
foreach ($perfcsvvm in $csvvm)
{
    if ($idx -lt $csvvm.Count)
    {
        $line= "{ `"{#CSVVM}`" : `"" + $perfcsvvm.Name + "`" },"
        write-host $line
    }
    elseif ($idx -ge $csvvm.Count)
    {
    $line= "{ `"{#CSVVM}`" : `"" + $perfcsvvm.Name + "`" }"
    write-host $line
    }
    $idx++;
}
write-host
write-host " ]"
write-host "}"
