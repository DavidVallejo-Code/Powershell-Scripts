$driveletter=Read-Host "Choose the Drive Letter: "
<#$driveletter="C:" 
#>
write-host "Retrieving..." -BackgroundColor White -ForegroundColor Black
Start-Sleep -Seconds 1

if($driveletter -match "[a-zA-z]{1}:$"){
    Get-WmiObject -class Win32_LogicalDisk -Filter "DeviceID='$driveletter'"|
    Sort-Object -property DeviceID |
    Format-Table -property DeviceID,
    @{l='FreeSpace(MB)';e={$_.FreeSpace / 1MB -as [int]}},
    @{l='Size(GB';e={$_.Size / 1GB -as [int]}},
    @{l='%Free';e={$_.FreeSpace / $_Size * 100 -as [int]}}
}else{
    Write-Host "Incorrect format" -BackgroundColor Red   
}