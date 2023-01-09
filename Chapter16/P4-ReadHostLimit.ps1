$name= Read-Host "What is Your Name" 
$pattern=[regex]"/^[a-zA-Z]+/gi"
echo $name

#if( $name -imatch $pattern){
if( $name -match "^[a-zA-Z]+"){
    #read-host "Enter a name " | where-object { $_.length -gt 5 } | Write-Output
    write-host "Correct format" -BackgroundColor Yellow
}else{
    write-host "InCorrect format" -BackgroundColor red
}

