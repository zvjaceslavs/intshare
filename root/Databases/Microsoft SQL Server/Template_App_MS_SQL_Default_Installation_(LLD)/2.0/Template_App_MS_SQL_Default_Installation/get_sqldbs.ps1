$dbs = Get-WmiObject Win32_PerfFormattedData_MSSQLServer_SQLServerDatabases | Select Name
$idx = 1
write-host "{"
write-host " `"data`":[`n"
foreach ($perfdbs in $dbs)
{
    if ($idx -lt $dbs.Count)
    {
        $line= "{ `"{#DBS}`" : `"" + $perfdbs.Name + "`" },"
        write-host $line
    }
    elseif ($idx -ge $dbs.Count)
    {
    $line= "{ `"{#DBS}`" : `"" + $perfdbs.Name + "`" }"
    write-host $line
    }
    $idx++;
}
write-host
write-host " ]"
write-host "}"