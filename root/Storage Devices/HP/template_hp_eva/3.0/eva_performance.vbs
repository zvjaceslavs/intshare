
' ====== CONFIGURATION ====== 
zabSend = "C:\Program Files\ZabbixAgent\zabbix_sender.exe"
zabServer = "10.10.10.10"
zabPort = "10051"
evaPerf = "C:\Program Files (x86)\Hewlett-Packard\EVA Performance Monitor\evaperf.exe"
storages = Array("EVA8400", "EVA6500")
'============================


Set xmlDoc = CreateObject("Msxml2.DOMDocument") 
Set objShell=CreateObject("Wscript.Shell")
Set objFSO=CreateObject("Scripting.FileSystemObject")
strTmpLine = objShell.ExpandEnvironmentStrings("%TEMP%")
Dim vdisks

For i=0 To UBound(storages)
	send_str = ""
	vdisks = Array()
	
	Set objExecObject = objShell.Exec("""" & evaPerf & """ as -nh -csv -nots -sz " & storages(i))
	WScript.Sleep 1000
	Do Until objExecObject.StdOut.AtEndOfStream
		csv = objExecObject.StdOut.ReadLine() 
		if csv<>"" then 
			str = split(csv,",")
			send_str = send_str & "-  eva.totalmbs[" & str(2) & "] " & Clng(Csng(str(1))*1000000) & vbCrLf
			send_str = send_str & "-  eva.totalreqs[" & str(2) & "] " & str(0) & vbCrLf
		end if 
	Loop
	
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
			addToVdiskArray vdisk, (CLng(str(1)) + CLng(str(4))), (Clng(Csng(str(2))*1000000) + Clng(Csng(str(5))*1000000)), CLng(str(7)), Clng(Csng(str(8))*1000000)			
		end if
	Loop
	For j=0 To UBound(vdisks)
		send_str = send_str & "-  eva.vdiskperf.readreqs[" & vdisks(j)(0) & "] " & vdisks(j)(1) & vbCrLf
		send_str = send_str & "-  eva.vdiskperf.readmbs[" & vdisks(j)(0) & "] " & vdisks(j)(2) & vbCrLf
		send_str = send_str & "-  eva.vdiskperf.writereqs[" & vdisks(j)(0) & "] " & vdisks(j)(3) & vbCrLf			
		send_str = send_str & "-  eva.vdiskperf.writembs[" & vdisks(j)(0) & "] " & vdisks(j)(4) & vbCrLf		
	Next
	
	outFile = strTmpLine & "\" & storages(i) & "_perf.txt"
	Set objFile = objFSO.CreateTextFile(outFile,True)
	objFile.Write trim(send_str)
	objFile.Close
	
	objShell.Run """" & zabSend & """ -z " & zabServer & " -p " & zabPort & " -s """ & storages(i) & """  -i """ & outFile & """",0,False
	
Next

Function addToVdiskArray(str, rr, rm, wr, wm)
	f = false
	For j=0 To UBound(vdisks)
		if vdisks(j)(0)=str then
			vdisks(j)(1) = vdisks(j)(1) + rr
			vdisks(j)(2) = vdisks(j)(2) + rm
			vdisks(j)(3) = vdisks(j)(3) + wr
			vdisks(j)(4) = vdisks(j)(4) + wm
			f = true
			Exit For
		end if 
	Next
	if not f then
		ReDim Preserve vdisks(Ubound(vdisks)+1)
		vdisks(Ubound(vdisks)) = Array(str, rr, rm, wr, wm)
	end if
End Function

