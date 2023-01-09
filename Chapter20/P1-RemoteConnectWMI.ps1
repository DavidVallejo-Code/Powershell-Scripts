$computername=read-host "Name the computer" 

if($computername -ne "localhost"){
    write-host "Sorry Remote jobs are not available at this time!" -foregroundcolor white -BackgroundColor red
}else{
    $result=Get-WmiObject win32_operatingsystem -ComputerName $computername
}

Write-Host $result 