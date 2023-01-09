Get-WmiObject -Class win32_BIOS -AsJob

$results=Receive-Job -id 2

$results|Export-Csv
