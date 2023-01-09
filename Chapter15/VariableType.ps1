#[int]$multiplyby=10
#[int]$number= Read-Host "enter a number"
#$number= $number * $multiplyby
#$number

$numkberlist= "230","234","10"
#$newnumberlist=$numberlist | ForEach-Object { $_ * 10 }
#write-host $newnumberlist
for($i=0; $numkberlist.Length>$i ; $i++){
    echo $numkberlist[$i]*10
}