$sentence="COOL","THERE","DAVE"
$length= $sentence | Select-Object length
#I FOUND THE METHOD FOR THE STRINGS BY DOING "anything " | gm 
#$sentence | ForEach-Object -Process {Write-Host $_.toLower() } 

#or
$sentence= $sentence | ForEach-Object { $_.ToLower() } 
echo "Senetece length is: "$length

#or
#for($i=0; $i -le $sentence.Count; $i++){
#    Write-Host $sentence[$i].toLower()
#}