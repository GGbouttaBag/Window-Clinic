echo off
chcp 65001
bcdedit >>nul
if %errorlevel% == 1 goto :NoAdmin
cls

:Menu
color 2
cls
echo.
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
echo                1 - FPS Boost
echo                2 - Low Ping
echo                3 - Exit
echo                4 - Language
echo.
echo     ** 그냥 닫지 말고 3번을 눌러서 닫아주세요 (권장) **
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
set /p choice= 번호를 선택해주세요 : 
IF %choice% == 1 goto Fps
IF %choice% == 2 goto Ping
IF %choice% == 3 goto End
IF %choice% == 4 goto Lang
IF %choice% == 220250 goto a

::a
cls
echo   _______                _____                      _______                  
echo     ____/______ ___________  /______ ________         ____/ ______   ______ _
echo     __/   _  __  /__  ___/_  __/_  _ \__  ___/        __/   __  __  /__  __  /
echo   /___   / /_/ / _(__  ) / /_  /  __/_  /           /___   _  /_/ / _  /_/ / 
echo /_____/  \____/  /____/  \__/  \___/ /_/         /_____/   _\__  /  _\__  /  
echo                                                            /____/   /____/   
timeout 2
goto Menu

:Lang
color a
cls
echo.
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
echo                1 - Korean
echo                2 - English
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
set /p choice= 번호를 선택해주세요 : 
IF %choice% == 1 goto Menu
IF %choice% == 2 goto Emenu

:FPS
color 4
cls
echo 약간의 시간이 소요됩니다
echo.
timeout 2
cls
goto EventLogDel

:EventLogDel
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :Do_clear "%%G")
goto JunkFileDel

:Do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof

:JunkFileDel
cls
del /s /q c:\$recycle.bin\*
del /s /q c:\Windows\SoftwareDistribution\*
del /s /q c:\Windows\Prefetch
del /s /q c:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*
del /s /q c:\Windows\temp\*
del /s /q %temp%\*
del /s /q %WinDir%\temp\*
del /s /q %localappdata%\Google\Chrome\"User Data"\Crashpad\reports\*
del /s /q %appdata%\discord\Cache\*
del /s /q %appdata%\discord\GPUCache\*
del /s /q %appdata%\discord\"Code Cache"\*
cleanmgr /autoclean
goto Setting

:Setting
cls
powercfg /hibernate off
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
bcdedit /set useplatformclock false
bcdedit /set disabledynamictick Yes
bcdedit /debug off
cls
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
cls
schtasks /change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
goto Menu

:a
cls
echo.
echo cinilcwodniw/weiv/moc.elgoog.setis//:sptth
echo.
echo 아무키나 눌러주세요
pause
goto Menu

:Ping
cls
color c
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
bcdedit /set useplatformclock false
bcdedit /set disabledynamictick Yes
bcdedit /debug off
netsh int ip reset c:\restlog.txt
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global autotuninglevel=highlyrestricted
netsh int tcp set global timestamps=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set security profiles=disabled
netsh int tcp set security mpp=disabled
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh int ip set global taskoffload=disabled
netsh int ip set global icmpredirects=disabled
netsh int ip set global neighborcachelimit=4096
netsh int ip set global multicastforwarding=disabled
netsh int ip delete arpcache
netsh int 6to4 set state disabled
netsh int isatap set state disable
netsh winsock reset catalog
netsh int ipv4 set dns name="Wi-Fi" static 8.8.8.8
netsh int ipv4 add dns name="Wi-Fi" 8.8.4.4 index=2
ipconfig/release
ipconfig/renew
ipconfig/flushdns
goto :Menu

:Emenu
color 2
cls
echo.
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
echo                1 - FPS Boost
echo                2 - Low Ping
echo                3 - Exit
echo                4 - Language
echo.
echo     ** Don't just close it, press 3 to close it (recommended) **
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
set /p choice= Please select a number: 
IF %choice% == 1 goto EFPS
IF %choice% == 2 goto EPing
IF %choice% == 3 goto EEnd
IF %choice% == 4 goto ELang
IF %choice% == 220270 goto b

::b
cls
echo   _______                _____                      _______                  
echo     ____/______ ___________  /______ ________         ____/ ______   ______ _
echo     __/   _  __  /__  ___/_  __/_  _ \__  ___/        __/   __  __  /__  __  /
echo   /___   / /_/ / _(__  ) / /_  /  __/_  /           /___   _  /_/ / _  /_/ / 
echo /_____/  \____/  /____/  \__/  \___/ /_/         /_____/   _\__  /  _\__  /  
echo                                                            /____/   /____/   
timeout 2
goto Emenu

:ELang
cls
echo.
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
echo                1 - Korean
echo                2 - English
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
set /p choice= Please select a number: 
IF %choice% == 1 goto Menu
IF %choice% == 2 goto Emenu

:EFPS
color 4
cls
echo It will take some time
echo.
timeout 2
cls
goto EEventLogDel

:EEventLogDel
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :Do_clear "%%G")
goto EJunkFileDel

:Do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof

:EJunkFileDel
cls
del /s /q c:\$recycle.bin\*
del /s /q c:\Windows\SoftwareDistribution\*
del /s /q c:\Windows\Prefetch
del /s /q c:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*
del /s /q c:\Windows\temp\*
del /s /q %temp%\*
del /s /q %WinDir%\temp\*.*
del /s /q %localappdata%\Google\Chrome\"User Data"\Crashpad\reports\*
del /s /q %appdata%\discord\Cache\*
del /s /q %appdata%\discord\GPUCache\*
del /s /q %appdata%\discord\"Code Cache"\*
cleanmgr /autoclean
goto Esetting

:Esetting
cls
powercfg /hibernate off
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
bcdedit /set useplatformclock false
bcdedit /set disabledynamictick Yes
bcdedit /debug off
cls
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
cls
schtasks /change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
cls
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
goto Emenu

:b
cls
echo.
echo windowclinic/weiv/moc.elgoog.setis//:sptth
echo.
echo Press Any Key
pause
goto Emenu

:EPing
cls
color c
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
bcdedit /set useplatformclock false
bcdedit /set disabledynamictick Yes
bcdedit /debug off
netsh int ip reset c:\restlog.txt
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global autotuninglevel=highlyrestricted
netsh int tcp set global timestamps=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set security profiles=disabled
netsh int tcp set security mpp=disabled
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh int ip set global taskoffload=disabled
netsh int ip set global icmpredirects=disabled
netsh int ip set global neighborcachelimit=4096
netsh int ip set global multicastforwarding=disabled
netsh int ip delete arpcache
netsh int 6to4 set state disabled
netsh int isatap set state disable
netsh winsock reset catalog
netsh int ipv4 set dns name="Wi-Fi" static 8.8.8.8
netsh int ipv4 add dns name="Wi-Fi" 8.8.4.4 index=2
ipconfig/release
ipconfig/renew
ipconfig/flushdns
goto :Emenu

:EEnd
cls
color c
echo.
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
echo                Please reboot your computer
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
timeout 2
taskkill /f /im explorer.exe
start explorer.exe
exit

:End
cls
color c
echo.
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
echo                     재부팅을 해주세요
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
timeout 2
taskkill /f /im explorer.exe
start explorer.exe
exit

:NoAdmin
cls
color 4
echo.
echo.
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo .                              
echo             우클릭 후 관리자 권한으로 실행해주세요
echo.
echo              Please run it with administrator
echo .
echo    ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
echo.
timeout 2
exit