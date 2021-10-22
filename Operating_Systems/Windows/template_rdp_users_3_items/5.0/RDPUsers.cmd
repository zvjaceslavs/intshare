@echo off
SETLOCAL EnableDelayedExpansion
set "_spaces=                                                    "
for /F "usebackq tokens=1,2,3,4,5*" %%i in (`query user 2^>nul`) do (
    if "%%l" == "Active" ( 
		set "_name=%%i%_spaces%"
		set "_idle=%_spaces%%%m"
		set "_time=%%n%_spaces%"
		ECHO !_name:~0,20!    !_idle:~-9!   !_time:~0,16!
	)
)
