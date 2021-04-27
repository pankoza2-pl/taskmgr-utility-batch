@echo off
title Task Manager Utility by Creper132 (modded by pankoza-pl) (Run as Administrator)
echo (1) Turn on task manager
echo (2) Turn off task manager
echo (3) Kill task manager
echo (4) Start Task Manager
set /p select=Select: 
if %select%==1 goto 1
if %select%==2 goto 2
if %select%==3 goto 3
if %select%==4 goto 4
:1
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f
exit
:2
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
exit
:3
taskkill /f /im taskmgr.exe /t
exit
:4
start taskmgr.exe
exit
