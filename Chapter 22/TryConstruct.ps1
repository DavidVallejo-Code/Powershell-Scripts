function get-stuff{

    BEGIN{
        rm C:\errors.txt -ea SilentlyContinue
    }

    PROCESS{
        try{
            Get-WmiObject win32_BIOS -ComputerName $_ -ea Stop
        }catch{
            $_ | Out-File C:\errors.txt -Append
        }
    }

}