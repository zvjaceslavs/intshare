@echo off
for %%a in ( C D E F ) do (
if EXIST %%a:\NUL (
echo Running on %%a drive
C:\SDelete\sdelete64.exe -accepteula -z %%a: > C:\SDelete\SDelete%%a.log
)
)

C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy bypass -file C:\SDelete\SDelete.ps1