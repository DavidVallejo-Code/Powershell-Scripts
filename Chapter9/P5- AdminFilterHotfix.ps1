#Display a list of hotfixes that were installed by the Administrator, and which are
#updates.

$securityadminhotfix=Get-hotfix | Where-Object -filter { $_.InstalledBy -like '*Admin*' } | Where-Object -filter { $_.Description -like '*Security*' }

echo $securityadminhotfix