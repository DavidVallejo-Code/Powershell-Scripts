function getVersion(){
    param($computername)
    $os=Get-WmiObject win32_operatingsystem -ComputerName $computername
    return($os.servicepackmajorversion)
}

#getVersion("localhost")
$version=getVersion localhost