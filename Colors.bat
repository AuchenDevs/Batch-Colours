@echo off
:ini
SETLOCAL EnableDelayedExpansion
set "0=[30m"
set "1=[34m"
set "2=[32m"
set "3=[36m"
set "4=[31m"
set "5=[35m"
set "6=[33m"
set "7=[37m"
set "8=[1;30m"
set "9=[1;34m"
set "a=[1;32m"
set "b=[1;36m"
set "c=[1;31m"
set "d=[1;35m"
set "e=[1;33m"
set "f=[97m"
set "n=[4m"
set "r=[24m"

cls
:msg
echo. 
set/p msg=!7!Message: 
if "%msg%"=="/restart" (cls & echo Restarted! & goto ini)
if "%msg%"=="/help" (goto help) 
call :background %msg%

echo %msg%
goto msg
pause

:background
if "%~1"=="/background" (
	color %~2
	echo Background changed!
	goto msg
)
exit /b

:help
echo.
echo Just type colour and msg. Colours are like Minecraft. 1-9 a-f n r (Ik other missing) but replacing ^&^<colour^> by ^!^<colour^>^!. Example: ^!6^!Thats gold colour msg
goto msg