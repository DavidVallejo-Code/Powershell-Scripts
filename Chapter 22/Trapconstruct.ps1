Set-ExecutionPolicy unrestricted

$logpath="C:\errors.txt"
if(Test-Path $logpath){
    Write-Host "file already exists"
}else{
    write-host "no file called $logpath exists, creating..."
    New-Item $logpath -type file
    Write-Host "done"
}

function get-stuff{
    process{
        trap{
            $_ | Out-File C:\errors.txt -append
            continue
        }

    Get-WmiObject win32_bios -ComputerName $_ -ea stop
    }
}

'localhost', 'doesntexist' | get-stuff
