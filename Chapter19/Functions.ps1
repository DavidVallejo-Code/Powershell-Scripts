param(
    $computername="localhost"
)


function OSInfo(){
    Get-WmiObject Win32_OperatingSystem -computer $computername |
    Select @{l='ComputerName';e={$_.__SERVER}},
    BuildNumber,ServicePackMajorVersion
}

function FreeOnDrive(){
    Get-WmiObject Win32_LogicalDisk -filter "DeviceID='C:'" -comp $computername |
    Select @{l='SysDriveFree(MB)';e={$_.FreeSpace / 1MB -as [int]}}
}