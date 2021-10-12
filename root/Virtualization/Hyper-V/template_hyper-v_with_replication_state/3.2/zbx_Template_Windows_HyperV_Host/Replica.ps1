
$replica = Get-VMReplication  | select Health
if ( $replica.Health -eq "Normal"){
      write-host 1
}elseif ( $replica.Health -eq "Critical"){
    write-host 2
}

