#Add-Member= Adds custom properties and methods to an instance of a Windows PowerShell object.


function Get-ServerInfo {
    param (
        $computername='localhost'
    )

    $os = Get-WmiObject ` Win32_OperatingSystem -computer $computername
    
    $disk = Get-WmiObject Win32_LogicalDisk -filter "DeviceID='C:'" `-computer $computername
    
    
    $obj = New-Object -TypeName PSObject
    $obj | Add-Member -MemberType NoteProperty ComputerName $computername
    $obj | Add-Member -MemberType NoteProperty BuildNumber $os.BuildNumber
    $obj | Add-Member -MemberType NoteProperty SPVersion $os.ServicePackMajorVersion
    $obj | Add-Member -MemberType NoteProperty SysDriveFree ($disk.free / 1MB -as [int]) Write-Output $obj
}
Get-ServerInfo  | Format-Table -auto