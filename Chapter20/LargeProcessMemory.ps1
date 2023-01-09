<#Simple

Gets the process memory consumption in a descending manner. 
Get-Process | Sort-Object -Property pm -Descending | Format-Table -property processname,pm
#>


<#Change this script so it converts mb#>
[int]$number=read-host "choose the parameter:"
[long]$totalused 

$processes=Get-Process

foreach($x in $processes){
    if($x.PM -gt $number){
        Write-Host $x.processname "->" ($x.PM/ 1mb)
    }
}

foreach($x in $processes){
    $totalused+=$x.PM
}

write-host "Total memory being used is: " ($totalused/ 1gb)