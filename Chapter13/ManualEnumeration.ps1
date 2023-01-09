#Get-WmiObject win32_service -Filter "name='BITS'" | ForEach-Object -Process { $_ | Select-String "Name" | Format-List }

1..5 | ForEach-Object -process { write-host $_ }


function waiting(){
    start-sleep 1; 
    return "count"
}