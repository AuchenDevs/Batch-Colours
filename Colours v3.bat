::
:: By craciu25_YT
::
:: If you are going to use the scr, just give me credits. Ty.
::

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
set "8=[90m"
set "9=[94m"
set "a=[92m"
set "b=[96m"
set "c=[91m"
set "d=[95m"
set "e=[93m"
set "f=[97m"
set "n=[4m"
set "r=[0m"
set "o=[3m"
set "m=[9m"

cls
:msg
echo. 
set/p msg=!r!!7!Message: 
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
echo Just type colour and msg. Colours are like Minecraft. 1-9 a-f n r (Ik other missing) but replacing ^&^<colour^> 
echo by ^^!^<colour^>^^!. Example: ^!6^!Thats gold colour msg
echo.
echo.!r!
echo           Commands:
echo  /help               -  Print that
echo.
echo  /background ^<arg1^>  -  Change the background using normal cmd config. Like, color 40 so /background 40
echo.
echo  /restart            -  Thats just for help me when developing the script
goto msg
