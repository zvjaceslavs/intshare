#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         Luc Rutten

 Script Function:
	Windows Firewall Profile Security check script.

	Profile is enabled:
	- Disabled=0
	- Enable=1

   Source(s):

#ce ----------------------------------------------------------------------------

#include <date.au3>
#include <EventLog.au3>

; Version Number
Dim $VERSION = '1.00'

SETTINGS()
VERSION($VERSION)
FIREWALL_CHECK ()

Func FIREWALL_CHECK ()

   Local $CurrentProfiles
   Local $LowerBound
   Local $UpperBound
   Local $iterate
   Local $excludedinterfacesarray
   Local $strWFStatus

   Const $NET_FW_PROFILE2_DOMAIN = 1
   Const $NET_FW_PROFILE2_PRIVATE = 2
   Const $NET_FW_PROFILE2_PUBLIC = 4
   Const $NET_FW_ACTION_BLOCK = 0
   Const $NET_FW_ACTION_ALLOW = 1

   Local $fwPolicy2
   $fwPolicy2 = ObjCreate("HNetCfg.FwPolicy2")
   $CurrentProfiles = $fwPolicy2.CurrentProfileTypes

   ; Check if Domain Profile is enabled
   Local $FW_DOMAIN_PROFILE = "0"
   If ( $CurrentProfiles AND $NET_FW_PROFILE2_DOMAIN ) Then
	  If $fwPolicy2.FirewallEnabled($NET_FW_PROFILE2_DOMAIN) = TRUE Then
		 $FW_DOMAIN_PROFILE = "1"
	  EndIf
   EndIf

   ; Check if Private Profile is enabled
   Local $FW_PRIVATE_PROFILE = "0"
   If ( $CurrentProfiles AND $NET_FW_PROFILE2_PRIVATE ) Then
	  If $fwPolicy2.FirewallEnabled($NET_FW_PROFILE2_PRIVATE) = TRUE Then
		 $FW_PRIVATE_PROFILE = "1"
	  EndIf
   EndIf

   ; Check if Public Profile is enabled
   Local $FW_PUBLIC_PROFILE = "0"
   If ( $CurrentProfiles AND $NET_FW_PROFILE2_PUBLIC ) Then
	  If $fwPolicy2.FirewallEnabled($NET_FW_PROFILE2_PUBLIC) = TRUE Then
		 $FW_PUBLIC_PROFILE = "1"
	  EndIf
   EndIf

   ; Send result for domain profile to logwriter and zabbixsender
   LOGWRITER ('INFORMATION','RESULT' & @TAB,'Domain: ' & $FW_DOMAIN_PROFILE)
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG,"zbx.win.firewall.profile.domain", $FW_DOMAIN_PROFILE)

   ; Send result for Private profile to logwriter and zabbixsender
   LOGWRITER ('INFORMATION','RESULT' & @TAB,"Private: " & $FW_PRIVATE_PROFILE)
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG,"zbx.win.firewall.profile.private", $FW_PRIVATE_PROFILE)

   ; Send result for Public profile to logwriter and zabbixsender
   LOGWRITER ('INFORMATION','RESULT' & @TAB,"Public: " & $FW_PUBLIC_PROFILE)
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG, "zbx.win.firewall.profile.public", $FW_PUBLIC_PROFILE)

EndFunc


Func VERSION($VALUE)

   ; Send version of the script to the Logfile & Zabbix.
   LogWriter ('INFORMATION','VERSION' & @TAB,'Version of zbx_winfirewall is: '& $VALUE &'.')
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG, 'zbx.win.firewall.version', $VALUE)

EndFunc


Func SETTINGS()

   Local $TITLE			= StringTrimRight (@ScriptName,4)
   Local $FILE			= @ScriptDir &'\settings.ini'
   Local $PATHTOSENDER	= 'C:\Zabbix\bin\win64\zabbix_sender.exe'
   Local $PATHTOCONFIG	= 'C:\Zabbix\conf\zabbix_agentd.win.conf'
   Local $LOGFILESIZE	= '1000000' ; File size in Bytes

   If Not FileExists ($FILE) Then
	  ;ConsoleWrite (@ScriptDir & '"\Settings.ini" not found.')
	  LOGWRITER ('WARNING' & @TAB,'SETTINGS',$FILE & ' not found, default settings wil be used.')

	  ; Write Enter as Seperator
	  FileWriteLine ($FILE, '# Title: ' & $TITLE)
	  FileWriteLine ($FILE, '#')
	  FileWriteLine ($FILE, '# [LOG]:')
	  FileWriteLine ($FILE, '#	FILESIZE	Maximum file size of the logfile to grow (default is: 1MB).')
	  FileWriteLine ($FILE, '#')
	  FileWriteLine ($FILE, '# [ZABBIX]:')
	  FileWriteLine ($FILE, '#	SENDER		Path to Zabbix Sender (default is: ' & $PATHTOSENDER &').')
	  FileWriteLine ($FILE, '#	CONFIG		Path to Zabbix Config (default is: ' & $PATHTOCONFIG &').')

	  ; Write Enter as Seperator
	  FileWriteLine ($FILE, @CRLF)

	  ; Write Log settings to settings.IniDelete
	  IniWrite ($FILE, 'LOG','FILESIZE', $LOGFILESIZE)

	  ; Write Enter as Seperator
	  FileWriteLine ($FILE, @CRLF)

	  ; Write Zabbix settings to settings.ini
	  IniWrite ($FILE, 'ZABBIX','SENDER', $PATHTOSENDER)
	  IniWrite ($FILE, 'ZABBIX','CONFIG', $PATHTOCONFIG)

   EndIf

   ; Retrieve Zabbix settings
   Global $ZBX_SENDER	= IniRead (@scriptdir &'\settings.ini', 'ZABBIX', 'SENDER', 'default')
   LogWriter ('INFORMATION','SETTINGS','PATH To Zabbix Sender: '& $ZBX_SENDER)
   Global $ZBX_CONFIG	= IniRead (@scriptdir &'\settings.ini', 'ZABBIX', 'CONFIG', 'default')
   LogWriter ('INFORMATION','SETTINGS','PATH To Zabbix Config: '& $ZBX_SENDER)

EndFunc


Func LOGWRITER ($STATUS,$CATEGORY,$DESCRIPTION)

   ; $STATUS should be: INFORMATION, WARNING or ERROR.

   ; Variable(s)
   Local $LOGPATH	= @ScriptDir &'\logs\'
   Local $LOGFILE	= StringTrimRight (@ScriptName,4)
   Local $FILESIZE	= IniRead (@scriptdir &'\settings.ini', 'LOG', 'FILESIZE', 'default' )

   Local $TIMESTAMP = @YEAR & @MON & @YDAY &'-'& @HOUR & @MIN & @SEC
   Local $LOGLINE	= $TIMESTAMP & @TAB & @ComputerName & @TAB & @UserName & @TAB& $STATUS & @TAB & $CATEGORY & @TAB & $DESCRIPTION &@CRLF

   ; Check if the directory logs exists
   If Not FileExists ($LOGPATH) Then
	  DirCreate ($LOGPATH)
   EndIf

   ; Delete Logfile when max. is reached.
   Local $CURRENTSIZE = FileGetSize($LOGPATH & $LOGFILE & '.log')
   If $CURRENTSIZE > $FILESIZE Then
	  FileDelete ($LOGPATH & $LOGFILE & '.log')
   EndIf

   ; Write to log file
   FileWrite($LOGPATH & $LOGFILE & '.log', $LOGLINE)

EndFunc


Func ZABBIXSENDER($SENDER, $CONFIG ,$KEY, $VALUE)

   ; Check if Zabbix sender exist
   IF FileExists ($SENDER) Then
	  LOGWRITER ('INFORMATION','ZABBIXSENDER','PATH to Zabbix sender: "' & $SENDER & ' "found')

	  ; Check if Zabbix connfig exists
	  IF FileExists ($CONFIG) Then
		 LOGWRITER ('INFORMATION','ZABBIXSENDER','PATH to Zabbix config: "' & $config & ' "found')

		 ; Send values to Zabbix
		 Runwait('"'& $SENDER &'" -c "' & $CONFIG & '" -k '& $KEY &' -o ' & $VALUE, '', @SW_HIDE, 2)
		 LOGWRITER ('INFORMATION','ZABBIXSENDER','Send: Value "'& $VALUE &'" to key: "' & $KEY & '"')
	  Else
		 LOGWRITER ('ERROR','ZABBIXSENDER','PATH to Zabbix config: ' & $config & ' not found, please configure Zabbix Agent or change path in "' & @ScriptDir & '\settings.ini"')
	  EndIf
   Else
	  LOGWRITER ('ERROR','ZABBIXSENDER','PATH to Zabbix sender: ' & $SENDER & ' not found, please configure Zabbix Agent or change path in "' & @ScriptDir & '\settings.ini"')
   EndIf

EndFunc

