@echo off
title Low Ping FPS Boost By : GlockBaby
color 0a
echo LOW PING GENERATOR By : GlockBaby https://discord.gg/QtRRhpZg
echo Generate Low Ping and Higher FPS for better game play.
pause
cls
echo Start Low Ping Generator?
echo Proceed?...
pause
chcp 65001
netsh int ip reset c:\restlog.txt
netsh int ip reset d:\restlog.txt
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
cls
powercfg/hibernate off
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
cls
bcdedit /set useplatformclock false
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global autotuninglevel=highlyrestricted
netsh int tcp set global timestamps=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int ip set global taskoffload=disabled
netsh int tcp set security profiles=disabled
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh int ip set global icmpredirects=disabled
netsh int ip set global neighborcachelimit=4096
netsh int ip set global multicastforwarding=disabled
netsh int ip delete arpcache
netsh int 6to4 set state disabled
netsh int tcp set security mpp=disabled
netsh int isatap set state disable
netsh winsock reset
cls
ipconfig/release
ipconfig/renew
ipconfig/flushdns
echo.
echo Low Ping Generator Is Complete! ^<press any key to continue^>
goto end

:end
cls
echo Thank you for using my products!! ENJOY!
echo Join Discord for more https://discord.gg/QtRRhpZg
timeout 2
exit
