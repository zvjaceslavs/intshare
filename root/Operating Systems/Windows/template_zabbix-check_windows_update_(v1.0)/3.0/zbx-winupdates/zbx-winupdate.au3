#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.12.0
 Author:         Luc Rutten
 Version: 1.01

 Script Function:
	Check If update are available

 Source:
   https://community.spiceworks.com/topic/599791-windows-update-script
   https://msdn.microsoft.com/nl-nl/library/windows/desktop/aa387102(v=vs.85).aspx
   https://gallery.technet.microsoft.com/scriptcenter/b9ba9b9d-cfc7-4bc9-980b-d914e81b3a84
   https://stackoverflow.com/questions/26064647/how-to-discover-if-windows-update-is-optional-recommended-or-important

#ce ----------------------------------------------------------------------------

#include <date.au3>
#include <EventLog.au3>


; Retrieve Zabbix settings
Dim $ZBX_SENDER	= IniRead (@scriptdir &"\settings.ini", "ZABBIX", "SENDER", "default" )
LogWriter ('SETTINGS','PATH To Zabbix Sender: '& $ZBX_SENDER)
Dim $ZBX_CONFIG	= IniRead (@scriptdir &"\settings.ini", "ZABBIX", "CONFIG", "default")
LogWriter ('SETTINGS','PATH To Zabbix Config: '& $ZBX_SENDER)

; Retrieve Windows update settings
Dim $WIN_UPDATE_HID	= IniRead (@scriptdir &"\settings.ini", "WINUPDATE", "HIDEHIDDENUPDATES", "False")
LogWriter ('SETTINGS','Hide hidden updates: '& $WIN_UPDATE_HID)

; Send signal to zabbix
LASTCHECK()

; Search for updates
FINDUPDATES()

; EndScript
Exit

Func LASTCHECK()

   ; Send Timestamp to zabbix that windows update has been cheched
   Local $TIMESTAMP = @YEAR & @MON & @YDAY & @HOUR & @MIN & @SEC
   ConsoleWrite ($TIMESTAMP)

   LogWriter ('LASTCHECK','Value "'& $TIMESTAMP &'" send to item "Last Check"')

EndFunc


Func FINDUPDATES()

   Local $UPDATES			= 0
   Local $CATEGORY			= 0

   Local $CAT_UPDATES		= 0	; Updates
   Local $CAT_CRITICAL		= 0 ; Security Updates
   Local $CAT_SECURITY		= 0 ; Security Updates
   Local $CAT_SERVICEPACK	= 0 ; Service Packs
   Local $CAT_ROLLUPS		= 0 ; Update Rollups
   Local $CAT_FEATURE		= 0 ; Feature Packs
   Local $CAT_UNCATEGORIZED	= 0 ; Uncategorized Packs


   Local $updateSession = ObjCreate("Microsoft.Update.Session")
   Local $updateSearcher = $updateSession.CreateupdateSearcher()

   LogWriter ("Updates","Searching for updates...")

   If $WIN_UPDATE_HID = "True" Then
	  $searchResult = $updateSearcher.Search("IsInstalled=0 and Type='Software' and IsHidden=0")
	  LogWriter ("Updates","List of applicable items without hidden updates on the machine:")
   Else
	  $searchResult = $updateSearcher.Search("IsInstalled=0 and Type='Software'")
	  LogWriter ("Updates","List of applicable items with hidden updates on the machine:")
   EndIf



   ; Check for updates
   For $i = 0 To $searchResult.Updates.Count - 1
	  $UPDATE = $searchResult.Updates.Item($i)

	  ; Check category
	  $CATEGORY = $searchResult.Updates.Item($i).Categories

	  For $j = 0 To $CATEGORY - 1

		 $CATEGORY = $CATEGORY.Item($j).Name

		 Select
			Case $CATEGORY = "Updates"

			   $CAT_UPDATES = $CAT_UPDATES + 1

			Case $CATEGORY = "Critical Updates"

			   $CAT_CRITICAL = $CAT_CRITICAL + 1

			Case $CATEGORY = "Security Updates"

			   $CAT_SECURITY = $CAT_SECURITY + 1

			Case $CATEGORY = "Service Packs"

			   $CAT_SERVICEPACK = $CAT_SERVICEPACK + 1

			Case $CATEGORY = "Update Rollups"

			   $CAT_ROLLUPS = $CAT_ROLLUPS + 1

			Case $CATEGORY ="Feature Packs"

			   $CAT_FEATURE = $CAT_FEATURE + 1

			Case Else

			   $CAT_UNCATEGORIZED = $CAT_UNCATEGORIZED + 1

		 EndSelect

	  Next

	  $UPDATES = $UPDATES + 1

	  LogWriter ("Updates", "Category: " & $CATEGORY & @TAB & $UPDATE.title)

   Next

   LogWriter ('FindUpdates','Total category - Updates (optional) available: Value "'& $CAT_UPDATES &'" send to item "win.updates.updates"')
   LogWriter ('FindUpdates','Total category - Critical Updates available: Value "'& $CAT_CRITICAL &'" send to item "win.updates.critical"')
   LogWriter ('FindUpdates','Total category - Security Updates available: Value "'& $CAT_SECURITY &'" send to item "win.updates.security"')
   LogWriter ('FindUpdates','Total category - Service Packs available: Value "'& $CAT_SERVICEPACK &'" send to item "win.updates.servicepack"')
   LogWriter ('FindUpdates','Total category - Update Rollups available: Value "'& $CAT_ROLLUPS &'" send to item "win.updates.rollups"')
   LogWriter ('FindUpdates','Total category - Feature Packs available: Value "'& $CAT_FEATURE &'" send to item "win.updates.feature"')
   LogWriter ('FindUpdates','Total category - Uncategorized updates available: Value "'& $CAT_UNCATEGORIZED &'" send to item "win.updates.uncategorized"')
   LogWriter ('FindUpdates','Total category - total updates available: Value "'& $UPDATES &'" send to item "win.updates.totalupdates"')

   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG, "zbx.win.updates.updates", $CAT_UPDATES)
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG, "zbx.win.updates.critical", $CAT_CRITICAL)
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG, "zbx.win.updates.security", $CAT_SECURITY)
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG, "zbx.win.updates.servicepacks", $CAT_SERVICEPACK)
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG, "zbx.win.updates.rollups", $CAT_ROLLUPS)
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG, "zbx.win.updates.feature", $CAT_FEATURE)
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG, "zbx.win.updates.uncategorized", $CAT_UNCATEGORIZED)
   ZABBIXSENDER($ZBX_SENDER, $ZBX_CONFIG, "zbx.win.updates.total", $UPDATES)

EndFunc


Func LOGVALUE ($KEY, $VALUE)

   Local $PATH			= @ScriptDir &'\values\'
   Local $LOGFILE 		= $PATH & $KEY & '.log'

   ; Check if path exist
   If Not FileExists ($PATH) Then
	  DirCreate ($PATH)
	  LogWriter ('LOGVALUE', 'Directory: '& $PATH &' does not exist and wil be created.')
   EndIf

   ; Check if file exist
   If FileExists ($LOGFILE) Then

	  ; Remove Old log file
	  FileDelete ($LOGFILE)
	  LogWriter ('LOGVALUE', 'Delete (last value) old file'& $LOGFILE)

	  ; Write Value to log
	  FileWrite($LOGFILE, $VALUE)
	  LogWriter ('LOGVALUE', 'Value: '& $VALUE &' is writen to: '& $LOGFILE)
   Else
	  ; Write Value to log
	  FileWrite($LOGFILE, $VALUE)
	  LogWriter ('LOGVALUE', 'Value: '& $VALUE &' is writen to: '& $LOGFILE)

   EndIf

EndFunc


Func LogWriter ($CATEGORY,$DESCRIPTION)

   ; Variable(s)
   Local $TIMESTAMP = @YEAR & @MON & @YDAY &"-"& @HOUR & @MIN & @SEC
   Local $LOGLINE	= $TIMESTAMP & @TAB & @ComputerName & @TAB & @UserName & @TAB& $CATEGORY & @TAB & $DESCRIPTION &@CRLF

   ; Write to log file
   LOCAL $LOGFILE	= StringTrimRight (@ScriptName,4)
   FileWrite(@ScriptDir &'\'& $LOGFILE & '.log', $LOGLINE)

EndFunc


Func ZABBIXSENDER($SENDER, $CONFIG ,$KEY, $VALUE)

   ;Local $SENDER	= 'C:\Zabbix\bin\win64\zabbix_sender.exe'
   ;Local $CONFIG	= 'C:\Zabbix\conf\zabbix_agentd.win.conf'

   LogWriter ('ZABBIXSENDER','PATH to Zabbix sender: ' & $SENDER)
   LogWriter ('ZABBIXSENDER','PATH to Zabbix config: ' & $CONFIG)

   Runwait('"'& $SENDER &'" -c "' & $CONFIG & '" -k '& $KEY &' -o ' & $VALUE, '', @SW_HIDE, 2)
   LogWriter ('ZABBIXSENDER','Send: Value "'& $VALUE &'" to key: "' & $KEY & '"')

EndFunc
