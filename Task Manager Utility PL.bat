@echo off
title Task Manager Utility by Creper132 (Uruchom jako administrator)
echo (1) Uruchom menadzer zadan
echo (2) Wylacz menadzer zadan
echo (3) Zabij menadzer zadan
set /p select=Wybierz: 
if %select%==1 goto 1
if %select%==2 goto 2
if %select%==3 goto 3
:1
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
exit
:2
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
exit
:3
taskkill /f /im taskmgr.exe /t
exit