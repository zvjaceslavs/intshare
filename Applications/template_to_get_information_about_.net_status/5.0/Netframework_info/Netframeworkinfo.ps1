# Get a WUA Session
$session = (New-Object -ComObject 'Microsoft.Update.Session')
#
#Determine .NET Version
#
If ($args[0] -eq "netver") {
 
$net = (Get-ItemProperty "HKLM:SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full").Release
if ($net){
 
    if ($net -ge 528040){
        write-host "4.8 or later";
        exit
        }
    if ($net -ge 461808){
        write "4.7.2";
        exit
        }
    if ($net -ge 461308){
        return "4.7.1";
        exit
        }
    if ($net -ge 460798){
        return "4.7";
        exit
        }
    if ($net -ge 394802){
        return "4.6.2";
        exit
        }
    if ($net -ge 394254){
        return "4.6.1";
        exit
        }
    if ($net -ge 393295){
        return "4.6";
        exit
        }
    if ($net -ge 379893){
        return "4.5.2";
        exit
        }
    if ($net -ge 378675){
        return "4.5.1";
        exit
        }
    if ($net -ge 378389){
        return "4.5";
        exit
   }
  else {
  echo "No 4.5 or later version detected"
  exit
  }
  }
  }

#
#Determine KB number
#
If ($args[0] -eq "kbnumber"){

 
if ($session.QueryHistory("",0,500) | Where-Object {$_.Title -cmatch "NET Framework"} | Sort-Object date | select-object -last 1){

   # Query the last KB Number of .NET update
   $history = $session.QueryHistory("",0,500) | Where-Object {$_.Title -cmatch "NET Framework"} | Sort-Object date | select-object -last 1
  
  
   $kbnumberunf = ($history.title).split('(')
   $kbnumberunf = $kbnumberunf.replace(')','')
   $kbnumberunf[1]
  
   exit 
   }
   else {
   write-host "No updates applied"
   }
   }


#
#Determine the date of the last .NET update 
# 
  If ($args[0] -eq "updatedate"){

    
if ($session.QueryHistory("",0,500) | Where-Object {$_.Title -cmatch "NET Framework"} | Sort-Object date | select-object -last 1){

   # Query the last .Net update
   $history = $session.QueryHistory("",0,500) | Where-Object {$_.Title -cmatch "NET Framework"} | Sort-Object date | select-object -last 1 
  
   $kbinfo1 = $history.Date
   $kbinfo1.tostring("MM/d/yyyy")

   exit
   }
   else {
   write-host "No updates applied"
   }
   }
