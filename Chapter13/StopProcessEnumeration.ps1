Get-process -Name notepad | Foreach-object { $_ | Stop-Process}
Write-Host "Opening new instance"
start-sleep -Seconds 1
Start-Process notepad
#Start-Process -FilePath "%windir%\system32\notepad.exe"