#Guess a random number

$numbers=1,2,3,4,5,6,7,8,9,10
$correct=$numbers|get-random

do{ $a=read-host -Prompt "what is your guess?"
    write-host "Not Correct"
}while($a -ne $correct)
Write-Host "$correct"