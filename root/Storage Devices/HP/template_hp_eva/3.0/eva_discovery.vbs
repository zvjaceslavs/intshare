
' ====== CONFIGURATION ====== 
zabSend = "C:\Program Files\ZabbixAgent\zabbix_sender.exe"
zabServer = "10.10.10.10"
zabPort = "10051"
sssuPath = "C:\Program Files (x86)\Hewlett-Packard\Sanworks\Element Manager for StorageWorks HSV\sssu.exe"
evaPerf = "C:\Program Files (x86)\Hewlett-Packard\EVA Performance Monitor\evaperf.exe"
manager = "localhost"
username = "admin"
password = "password"
storages = Array("EVA8400", "EVA6500")
'============================


Set xmlDoc = CreateObject("Msxml2.DOMDocument") 
Set objShell=CreateObject("Wscript.Shell")
Const WshRunning = 0

For i=0 To UBound(storages)
	selectSys = """select system " & storages(i) & """ "
	
	discovery_ctrl = "{""data"":["
	str = xmlDoc.loadXML(getXML(selectSys & """ls controller FULL XML""", "<object>"))
	Set cNodeList = xmlDoc.selectNodes("//root/object/objectid")
	For Each cNode in cNodeList
		discovery_ctrl = discovery_ctrl & "{""{#CTRLID}"": """ & cNode.text & ""","
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/controllername")
		discovery_ctrl = discovery_ctrl & """{#CTRLNAME}"": """ & cNode2.text & """},"
	Next
	discovery_ctrl = Left(discovery_ctrl, (Len(discovery_ctrl)-1))
	discovery_ctrl = discovery_ctrl & "]}"
	discovery_ctrl = Replace(discovery_ctrl,"""","""""")

	discovery_ds = "{""data"":["
	str = xmlDoc.loadXML(getXML(selectSys & """ls diskshelf FULL XML""", "<object>"))
	Set cNodeList = xmlDoc.selectNodes("//root/object/objectid")
	For Each cNode in cNodeList 		
		discovery_ds = discovery_ds & "{""{#SHELFID}"": """ & cNode.text & ""","
		set cNode2   = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/diskshelfname")
		discovery_ds = discovery_ds & """{#SHELFNAME}"": """ & cNode2.text & """},"
	Next
	discovery_ds = Left(discovery_ds, (Len(discovery_ds)-1))
	discovery_ds = discovery_ds & "]}"
	discovery_ds = Replace(discovery_ds,"""","""""")
	
	discovery_dg = "{""data"":["
	str = xmlDoc.loadXML(getXML(selectSys & """ls disk_group FULL XML""", "<object>"))
	Set cNodeList = xmlDoc.selectNodes("//root/object/objectid")
	For Each cNode in cNodeList			
		discovery_dg = discovery_dg & "{""{#DISKGROUPID}"": """ & cNode.text & ""","
		set cNode2   = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/diskgroupname")
		discovery_dg = discovery_dg & """{#DISKGROUPNAME}"": """ & cNode2.text & """},"
	Next
	discovery_dg = Left(discovery_dg, (Len(discovery_dg)-1))
	discovery_dg = discovery_dg & "]}"
	discovery_dg = Replace(discovery_dg,"""","""""")
	
	discovery_vdisk = "{""data"":["
	str = xmlDoc.loadXML(getXML(selectSys & """ls vdisk FULL XML""", "<object>"))
	Set cNodeList = xmlDoc.selectNodes("//root/object/objectid")
	For Each cNode in cNodeList
		discovery_vdisk = discovery_vdisk & "{""{#VDISKID}"": """ & cNode.text & ""","
		set cNode2   = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/familyname")
		discovery_vdisk = discovery_vdisk & """{#VDISKNAME}"": """ & cNode2.text & """},"
	Next
	discovery_vdisk = Left(discovery_vdisk, (Len(discovery_vdisk)-1))
	discovery_vdisk = discovery_vdisk & "]}"
	discovery_vdisk = Replace(discovery_vdisk,"""","""""")
	
	
	discovery_arr_perf = "{""data"":["
	Set objExecObject = objShell.Exec("""" & evaPerf & """ as -nh -csv -nots -sz " & storages(i))
	WScript.Sleep 1000
	Do Until objExecObject.StdOut.AtEndOfStream
		csv = objExecObject.StdOut.ReadLine() 
		if csv<>"" then 
			str = split(csv,",")
			discovery_arr_perf = discovery_arr_perf & "{""{#ARRAYNAME}"": """ & str(2) & """}"	
		end if 		
	Loop
	discovery_arr_perf = discovery_arr_perf & "]}"
	discovery_arr_perf = Replace(discovery_arr_perf,"""","""""")

	discovery_vdisk_perf = "{""data"":["
	Set objExecObject2 = objShell.Exec("""" & evaPerf & """ vd -nh -csv -nots -sz " & storages(i))
	WScript.Sleep 2000
	Do Until objExecObject2.StdOut.AtEndOfStream
		csv = objExecObject2.StdOut.ReadLine() 
		if csv<>"" then
			str = split(csv,",")
			k = InStrRev(str(22),"\")
			if k<>0 then
				vdisk = Mid(str(22), k+1)
			else 
				vdisk = str(22)
			end if
			
			discovery_vdisk_perf = discovery_vdisk_perf & "{""{#VDISK}"": """ & vdisk & """},"		
		end if
	Loop
	discovery_vdisk_perf = Left(discovery_vdisk_perf, (Len(discovery_vdisk_perf)-1))
	discovery_vdisk_perf = discovery_vdisk_perf & "]}"
	discovery_vdisk_perf = Replace(discovery_vdisk_perf,"""","""""")
		

	objShell.Run """" & zabSend & """ -z " & zabServer & " -p " & zabPort & " -s """ & storages(i) & """   -k ""eva.controllers.discovery"" -o """ & discovery_ctrl & """",0,False
	objShell.Run """" & zabSend & """ -z " & zabServer & " -p " & zabPort & " -s """ & storages(i) & """   -k ""eva.diskshelf.discovery"" -o """ & discovery_ds & """",0,False
	objShell.Run """" & zabSend & """ -z " & zabServer & " -p " & zabPort & " -s """ & storages(i) & """   -k ""eva.disk_group.discovery"" -o """ & discovery_dg & """",0,False
	objShell.Run """" & zabSend & """ -z " & zabServer & " -p " & zabPort & " -s """ & storages(i) & """   -k ""eva.vdisk.discovery"" -o """ & discovery_vdisk & """",0,False
	objShell.Run """" & zabSend & """ -z " & zabServer & " -p " & zabPort & " -s """ & storages(i) & """   -k ""eva.arrayperf.discovery"" -o """ & discovery_arr_perf & """",0,False
	objShell.Run """" & zabSend & """ -z " & zabServer & " -p " & zabPort & " -s """ & storages(i) & """   -k ""eva.vdiskperf.discovery"" -o """ & discovery_vdisk_perf & """",0,False
	
Next


Function getXML(cmd, parse)
	varCmd = """"&sssuPath& """ ""select manager " & manager & " username=" & username & " password=" & password & """ " & cmd	
	Set objExec=objShell.Exec(varCmd)
	res = objExec.StdOut.ReadAll
	res = Mid(res,InStr(res,parse))
	res = Replace(res, Chr("&H01"),"")
	res = "<?xml version='1.0'?><root>" & res & "</root>"
	getXML = res 
End Function 
