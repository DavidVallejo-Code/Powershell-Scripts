$jews="david","joseph","moses"
$name=Read-Host "What's your name?"

Write-Host "type HALT to stop the jew checker"

while($name -ne "HALT"){
    if($jews -contains $name){
        Write-host "STOP $name" -backgroundcolor Red
    }else{
        Write-host "You're fine $name" -ForegroundColor Black -backgroundcolor White
    }

    $name=Read-Host "What's your name?"
}