$csvsmb = get-smbshare -includehidden -smbinstance csv | select name
$idx = 1
write-host "{"
write-host " `"data`":[`n"
foreach ($perfcsvsmb in $csvsmb)
{
    if ($idx -lt $csvsmb.Count)
    {
        $line= "{ `"{#CSVSMB}`" : `"" + $perfcsvsmb.Name + "`" },"
        write-host $line
    }
    elseif ($idx -ge $csvsmb.Count)
    {
    $line= "{ `"{#CSVSMB}`" : `"" + $perfcsvsmb.Name + "`" }"
    write-host $line
    }
    $idx++;
}
write-host
write-host " ]"
write-host "}"
