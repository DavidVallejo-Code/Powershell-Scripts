#The Get-Hotfix cmdlet gets hotfixes (also called updates) that have been installed on 
#either the local computer (or on specified remote computers) by Windows Update, Microsoft Update, or Windows Server Update Services; the cmdlet also gets hotfixes or updates that have been installed manually by users.

$hotfixes=Get-HotFix|Select InstalledOn,HotFixID,InstalledBy|Sort-Object InstalledOn -Descending|select -First 5

echo $hotfixes

$answer=Read-Host "Would you like to export to HTML file?"
if($answer -eq "y"){
    $hotfixes|ConvertTo-Html|out-file "hotfixes.html"
}else{
    exit
}