try{
    Get-WmiObject win32_bios -ComputerName $_ -ea stop
}catch{
    Write-Host "Error caught: check error.txt file" -BackgroundColor Red
    $_ | Out-File C:\errors.txt -Append
}finally{
    Write-Host "Command executed" -backgroundcolor Cyan
}