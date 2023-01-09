<#Call it like ".\P1-Parameter.ps1 -computername jerry"
 #>
param(
    $computername="localhost",
    $buildnumber=7600
)

Get-WmiObject -class Win32_OperatingSystem `
-computername "$computername" |
Where-Object { $_.BuildNumber -ge $buildnumber } |
    Format-Table __SERVER,Caption,BuildNumber,ServicePackMajorVersion,
    @{l='BIOSSerial';e={
    Get-WmiObject -class Win32_BIOS -computername $_.__SERVER |
    Select-Object -expand SerialNumber
}}