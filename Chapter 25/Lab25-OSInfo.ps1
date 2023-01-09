function getosinfo{
    param{
        [string]$name
        [string]$logfile
    }
    try{
        $continue=$True
        $os= get-wmiobject win32_operatingsystem -ComputerName $name -ea 'stop'
    }catch{
        if()
    }
        
}