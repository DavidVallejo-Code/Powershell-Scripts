function Get-­ServerInfo {

param(
    $computername = 'localhost'
)



$os= Get-WmiObject Win32_OperatingSystem ­‐comp $computername 

$bios= Get­‐WmiObject Win32_BIOS -­comp $computername 

$comp= Get-WmiObject Win32_ComputerSystem -­comp $computername


$obj= New-Object PSObject 

$obj | Add-Member ­‐MemberType NoteProperty `  ­‐Name ComputerName ­‐Value $computername

$obj | Add­‐Member ­‐MemberType NoteProperty ` -­Name OSVersion ­‐Value ($os.Caption)

$obj | Add­‐Member ­‐MemberType NoteProperty ` -­Name Domain -­Value ($comp.Domain)

$obj | Add­‐Member ­‐MemberType NoteProperty ` ­‐Name DNSHostName ­‐Value ($comp.DNSHostName)

$obj | Add­‐Member ­‐MemberType  NoteProperty ` ­‐Name BIOSSerial ­‐Value ($bios.serialnumber)


Write-­Output $obj 

}


Get-­ServerInfo | Export-Csv yourtable.csv