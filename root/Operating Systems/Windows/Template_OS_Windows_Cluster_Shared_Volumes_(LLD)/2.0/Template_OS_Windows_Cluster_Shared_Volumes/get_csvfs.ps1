$csvfs = Get-WmiObject win32_PerfFormattedData_CsvFsPerfProvider_ClusterCSVFileSystem| Select Name
$idx = 1
write-host "{"
write-host " `"data`":[`n"
foreach ($perfcsvfs in $csvfs)
{
    if ($idx -lt $csvfs.Count)
    {
        $line= "{ `"{#CSVFS}`" : `"" + $perfcsvfs.Name + "`" },"
        write-host $line
    }
    elseif ($idx -ge $csvfs.Count)
    {
    $line= "{ `"{#CSVFS}`" : `"" + $perfcsvfs.Name + "`" }"
    write-host $line
    }
    $idx++;
}
write-host
write-host " ]"
write-host "}"
