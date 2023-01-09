$drives= Get-WmiObject Win32_LogicalDisk 

foreach($driveloop in $drives){
    
    Write-Host $wee.deviceid "-->" -NoNewline
    switch ($driveloop.drivetype){
        3{
            Write-Host "Fixed Local" -BackgroundColor Cyan
               
        }
        5{
            Write-Host "Optical" -BackgroundColor Blue
        }
        2{
            Write-Host "Floppy" -BackgroundColor Gray
        }
    }
}