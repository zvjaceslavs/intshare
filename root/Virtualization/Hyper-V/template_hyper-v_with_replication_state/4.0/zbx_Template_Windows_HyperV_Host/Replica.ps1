
$replica = Get-VMReplication | select Health
if ( $replica.Health -eq "Critical"){
      write-host 2
}elseif ( $replica.Health -eq "Normal"){
    write-host 1
}