@echo off
title FPS Booster By : GlockBaby
color 0a
ECHO FPS BOOSTER By : GlockBaby https://discord.gg/QtRRhpZg
ECHO Boost your FPS for any game.
pause
cls
ECHO Boost Starting...
ECHO Proceed?...
pause

chcp 65001
bcdedit >>nul
if %errorlevel% == 1 goto :NoAdmin
cls
goto EventlogDel

:EventlogDel
cls
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :Do_clear "%%G")
cls
goto JunkFileDel

:Do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof

:JunkFileDel
cls
del /s /q c:\windows\recent\*.*
rd /s /q C:\$recycle.bin\*.*
del /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
goto three

:three
cls
powercfg/hibernate off
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
bcdedit /set useplatformclock false
bcdedit /set disabledynamictick Yes
goto four

:four
cls
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
schtasks /change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
ECHO.
ECHO FPS Has Been Boosted.. ^<press any key^>
goto end

:end
cls
echo Thank you - GlockBaby
timeout 2
exit

:NoAdmin
cls
echo Thank you - GlockBaby
timeout 2
exit
