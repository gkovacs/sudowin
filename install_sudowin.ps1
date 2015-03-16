# run as admin
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
  $arguments = "& '" + $myinvocation.mycommand.definition + "'"
  Start-Process powershell -Verb runAs -ArgumentList $arguments
  Break
}

cp "$PSScriptRoot\sudowin.ps1" "c:\windows\system32\"
echo "powershell c:\windows\system32\sudowin.ps1 %*" | out-file -encoding ASCII "c:\windows\system32\sudowin.bat"
