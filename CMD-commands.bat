@echo off
title Funcoes CMD
chcp 65001 >nul
color 3

:: Verifica se o script está rodando como administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    rem echo Solicitando permissões de administrador...
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit
)

:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo. 
echo [36m╔═════════════════════════╗[0m
echo [36m║ 1 -  sfc/scannow        ║[0m
echo [36m║ 2 -  systeminfo         ║[0m
echo [36m║ 3 -  tasklist           ║[0m
echo [36m║ 4 -  ipconfig           ║[0m
echo [36m║ 5 -  assoc              ║[0m
echo [36m║ 6 -  netstat            ║[0m
echo [36m║ 7 -  taskmanager        ║[0m
echo [36m║ 8 -  ver                ║[0m
echo [36m║ 9 -  desk.cpl           ║[0m
echo [36m║ 10 - control            ║[0m
echo [36m║ 11 - msinfo32           ║[0m
echo [36m║ 12 - devmgmt.msc        ║[0m
echo [36m║ 13 - driverquery        ║[0m
echo [36m║ 14 - Sair               ║[0m
echo [36m╚═════════════════════════╝[0m
echo.
echo.

set /p opcao=Escolha uma opção: 

if "%opcao%"=="1" goto sfc/scannow
if "%opcao%"=="2" goto systeminfo
if "%opcao%"=="3" goto tasklist
if "%opcao%"=="4" goto ipconfig
if "%opcao%"=="5" goto assoc
if "%opcao%"=="6" goto netstat
if "%opcao%"=="7" goto taskmanager
if "%opcao%"=="8" goto ver
if "%opcao%"=="9" goto desk.cpl
if "%opcao%"=="10" goto control
if "%opcao%"=="11" goto msinfo32
if "%opcao%"=="12" goto devmgmt.msc
if "%opcao%"=="13" goto driverquery
if "%opcao%"=="14" exit

:sfc/scannow
sfc/scannow
pause
cls
goto start
:systeminfo
systeminfo
pause
cls
goto start
:tasklist
tasklist
pause
cls
goto start
:ipconfig
ipconfig
pause
cls
goto start
:assoc
assoc
pause
cls
goto start
:netstat
netstat
pause
cls
goto start
:taskmanager
taskmgr
pause
cls
goto start
:ver
ver
pause
cls
goto start
:desk.cpl
desk.cpl
pause
cls
goto start
:control
control
pause
cls
goto start
:msinfo32
msinfo32
pause
cls
goto start
:driverquery
driverquery
pause
cls
goto start
:devmgmt.msc
devmgmt.msc
pause
cls
goto start

:banner
echo.
echo.
echo [93m ▄▄· • ▌ ▄ ·. ·▄▄▄▄       ▄▄·       • ▌ ▄ ·. • ▌ ▄ ·.  ▄▄▄·  ▐ ▄ ·▄▄▄▄  .▄▄ · [0m
echo [93m▐█ ▌▪·██ ▐███▪██▪ ██     ▐█ ▌▪▪     ·██ ▐███▪·██ ▐███▪▐█ ▀█ •█▌▐███▪ ██ ▐█ ▀. [0m
echo [93m██ ▄▄▐█ ▌▐▌▐█·▐█· ▐█▌    ██ ▄▄ ▄█▀▄ ▐█ ▌▐▌▐█·▐█ ▌▐▌▐█·▄█▀▀█ ▐█▐▐▌▐█· ▐█▌▄▀▀▀█▄[0m
echo [93m▐███▌██ ██▌▐█▌██. ██     ▐███▌▐█▌.▐▌██ ██▌▐█▌██ ██▌▐█▌▐█ ▪▐▌██▐█▌██. ██ ▐█▄▪▐█[0m
echo [93m·▀▀▀ ▀▀  █▪▀▀▀▀▀▀▀▀•     ·▀▀▀  ▀█▄▀▪▀▀  █▪▀▀▀▀▀  █▪▀▀▀ ▀  ▀ ▀▀ █▪▀▀▀▀▀•  ▀▀▀▀ [0m
echo                      [36mScript created by: ςψphεr[0m
echo.
echo.
pause