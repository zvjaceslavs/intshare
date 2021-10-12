@echo off
for /f "tokens=* usebackq" %%i in (`"C:\"WebSphere MQ"\bin\dspmq.exe -n"`) do (
	set LINE=%%i
)
if "%LINE%" == "QMNAME(RU.CDU.CNT.YAR)                                    STATUS(RUNNING)" (
	echo 0

) else (

	echo 7
	exit 0
)