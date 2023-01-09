#Display a list of hotfixes that were installed by the Administrator, and which are
#updates.

#not working
#$securityadminhotfix=Get-process | Where-Object -filter { $_.ProcessName -like ( '*conhost*' -and '*svchost*' ) } 
$securityadminhotfix=Get-process | Where-Object -filter { $_.ProcessName -like '*svchost*' } | Sort-Object VM -Descending

echo $securityadminhotfix