@echo off
bcdedit /set disabledynamictick yes
taskkill /f /im explorer.exe
start explorer.exe
exit