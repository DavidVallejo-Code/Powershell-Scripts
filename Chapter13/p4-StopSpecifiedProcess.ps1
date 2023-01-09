#What method of a WMI Win32_Process object would terminate a given process?


$processes=Get-WmiObject win32_process

echo $processes

echo "Which one would you like to stop"

$xxx=Read-Host "Which one do you want to stop?"

echo $processes -name $xxx| Stop-Process