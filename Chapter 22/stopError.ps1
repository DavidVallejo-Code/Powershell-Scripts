function get-stuff{
    PROCESS{
        Get-WmiObject win32_bios -ComputerName $_ -ea stop
    }
}

'loaclhost','Server2','localhost' | get-stuff