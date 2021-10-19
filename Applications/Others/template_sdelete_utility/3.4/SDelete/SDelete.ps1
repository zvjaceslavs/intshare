foreach ($letter in "C","D","E","F" )
   {

$disk=$letter+":"

if ( Test-Path $disk )
    { 
     $result = Get-Content -Tail 2 C:\SDelete\SDelete$letter.log
     $result = $result -replace '(^\s+|\s+$)','' -replace '\s+',' '
     $string1 = $result | select-object -first 1
     $string2 = $result | select-object -last 1
     $result = $string1 + " " + $string2

     $correct_result = "Free space cleaned on $disk\ 1 drive cleaned."

     if ( $result -eq $correct_result )
         { echo "Result is correct $disk" }
         else
         { echo "Result is wrong $disk"
           $bad_result = 0 }
    }
   }

$hostname = Get-Content C:\Zabbix\conf\zabbix_agentd.win.conf | Select-String -Pattern '\bHostname=\b'
$hostname = $hostname -replace "Hostname="

if ( $bad_result -eq 0 )
    { 
      echo "Sending error to Zabbix"
      $zabbix_result = 0
    }
else 
    {
      echo "Sending OK to Zabbix"
      $zabbix_result = 1
    }

C:\Zabbix\bin\win64\zabbix_sender.exe -z 127.0.0.1 -p 10051 -s $hostname -k sdelete -o $zabbix_result