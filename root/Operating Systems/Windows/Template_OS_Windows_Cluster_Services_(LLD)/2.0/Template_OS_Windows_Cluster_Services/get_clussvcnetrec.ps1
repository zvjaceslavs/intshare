$clussvcnetrec = Get-WmiObject win32_PerfFormattedData_ClussvcPerfProvider_ClusterNetworkReconnections | Select Name
$idx = 1
write-host "{"
write-host " `"data`":[`n"
foreach ($perfclussvcnetrec in $clussvcnetrec)
{
    if ($idx -lt $clussvcnetrec.Count)
    {
        $line= "{ `"{#CLUSSVCNETREC}`" : `"" + $perfclussvcnetrec.Name + "`" },"
        write-host $line
    }
    elseif ($idx -ge $drives.Count)
    {
    $line= "{ `"{#CLUSSVCNETREC}`" : `"" + $perfclussvcnetrec.Name + "`" }"
    write-host $line
    }
    $idx++;
}
write-host
write-host " ]"
write-host "}"
