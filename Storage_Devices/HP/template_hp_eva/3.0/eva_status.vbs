
' ====== CONFIGURATION ====== 
zabSend = "C:\Program Files\ZabbixAgent\zabbix_sender.exe"
zabServer = "10.10.10.10"
zabPort = "10051"
sssuPath = "C:\Program Files (x86)\Hewlett-Packard\Sanworks\Element Manager for StorageWorks HSV\sssu.exe"
manager = "localhost"
username = "admin"
password = "password"
storages = Array("EVA8400", "EVA6500")
'============================


Set xmlDoc = CreateObject("Msxml2.DOMDocument") 
Set objShell=CreateObject("Wscript.Shell")
Set objFSO=CreateObject("Scripting.FileSystemObject")
strTmpLine = objShell.ExpandEnvironmentStrings("%TEMP%")

For i=0 To UBound(storages)
	send_str = ""
	selectSys = """select system " & storages(i) & """ "
	
	str = xmlDoc.loadXML(getXML(selectSys & """ls system " & storages(i) & " XML""", "<object>"))
	Set cNode = xmlDoc.selectSingleNode("//root/object/operationalstate")
	
	send_str = send_str & "- eva.operationalstate " & stateToInt(cNode.text) & vbCrLf
	Set cNode = xmlDoc.selectSingleNode("//root/object/systemtype")
	send_str = send_str & "- eva.systemtype " & cNode.text & vbCrLf
	Set cNode = xmlDoc.selectSingleNode("//root/object/availablestoragespace")
	send_str = send_str & "- eva.availablestoragespace " & strGbToInt(cNode.text) & vbCrLf
	Set cNode = xmlDoc.selectSingleNode("//root/object/totalstoragespace")
	send_str = send_str & "- eva.totalstoragespace " & strGbToInt(cNode.text) & vbCrLf
	Set cNode = xmlDoc.selectSingleNode("//root/object/usedstoragespace")
	send_str = send_str & "- eva.usedstoragespace " & strGbToInt(cNode.text) & vbCrLf
	
	str = xmlDoc.loadXML(getXML(selectSys & """ls controller FULL XML""", "<object>"))
	Set cNodeList = xmlDoc.selectNodes("//root/object/objectid")
	For Each cNode in cNodeList
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/operationalstate")
		send_str = send_str & "- eva.controller.state[" & cNode.text & "] " & stateToInt(cNode2.text) & vbCrLf
	Next
		
	str = xmlDoc.loadXML(getXML(selectSys & """ls diskshelf FULL XML""", "<object>"))
	Set cNodeList = xmlDoc.selectNodes("//root/object/objectid")
	For Each cNode in cNodeList
		set cNode2   = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/operationalstate")
		send_str = send_str & "- eva.diskshelf.state[" & cNode.text & "] " & stateToInt(cNode2.text) & vbCrLf
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/cooling/sensor[name=""MidplaneSensor1""]/tempovrwrnc")
		send_str = send_str & "- eva.diskshelf.tempovrwrnc[" & cNode.text & "] " & cNode2.text & vbCrLf
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/cooling/sensor[name=""MidplaneSensor1""]/tempovrcric")
		send_str = send_str & "- eva.diskshelf.tempovrcric[" & cNode.text & "] " & cNode2.text & vbCrLf
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/cooling/sensor[name=""MidplaneSensor1""]/tempc")
		send_str = send_str & "- eva.diskshelf.tempc[" & cNode.text & "] " & cNode2.text & vbCrLf		
	Next

	str = xmlDoc.loadXML(getXML(selectSys & """ls disk_group FULL XML""", "<object>"))
	Set cNodeList = xmlDoc.selectNodes("//root/object/objectid")
	For Each cNode in cNodeList
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/operationalstate")
		send_str = send_str & "- eva.diskgroup.state[" & cNode.text & "] " & stateToInt(cNode2.text) & vbCrLf
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/totalstoragespacegb")
		send_str = send_str & "- eva.diskgroup.totalstoragespacegb[" & cNode.text & "] " & strGbToInt(cNode2.text) & vbCrLf
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/usedstoragespacegb")
		send_str = send_str & "- eva.diskgroup.usedstoragespacegb[" & cNode.text & "] " & strGbToInt(cNode2.text) & vbCrLf
	Next
	
	str = xmlDoc.loadXML(getXML(selectSys & """ls vdisk FULL XML""", "<object>"))
	Set cNodeList = xmlDoc.selectNodes("//root/object/objectid")
	For Each cNode in cNodeList
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/operationalstate")
		send_str = send_str & "- eva.vdisk.state[" & cNode.text & "] " & stateToInt(cNode2.text) & vbCrLf
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/requestedcapacity")
		send_str = send_str & "- eva.vdisk.requestedcapacity[" & cNode.text & "] " & strGbToInt(cNode2.text) & vbCrLf
		Set cNode2 = xmlDoc.SelectSingleNode("//root/object[objectid=""" & cNode.text & """]/redundancy")
		send_str = send_str & "- eva.vdisk.redundancy[" & cNode.text & "] " & cNode2.text & vbCrLf
	Next
	
	outFile = strTmpLine & "\" & storages(i) & ".txt"
	Set objFile = objFSO.CreateTextFile(outFile,True)
	objFile.Write trim(send_str)
	objFile.Close
	
	objShell.Run """" & zabSend & """ -z " & zabServer & " -p " & zabPort & " -s """ & storages(i) & """  -i """ & outFile & """",0,False

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

Function stateToInt(str)
	value = 1
	If LCase(str)="good" Then
		value = 2
	Else
		If LCase(str)="attention" Then
			value = 3 
		End If 		
	End If 
	stateToInt = value
End Function

Function strGbToInt(str)
	k = CSng(str)
	k = round(k*1000000000)	
	strGbToInt = k
End Function
