@echo off
echo checking for admin privs
net session >nul 2>&1
if %errorLevel% == 0 (
  echo have admin privs
  powershell /command "set-executionpolicy unrestricted"
  powershell "%~dp0%install_sudowin.ps1"
) else (
  echo launching as admin
  powershell /command "start-process "%~dp0%setup.bat" -Verb runAs"
)
pause