@echo off
SETLOCAL EnableDelayedExpansion
set "_count=0"                                                    "
for /F "usebackq tokens=1,2,3,4,5*" %%i in (`query user 2^>nul`) do (
    if "%%l" == "Active" ( 
		set /a "_count=!_count!+1"
	)
)
ECHO !_count!