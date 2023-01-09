#REMEMBER THAT SPACES COUNT IN POWERSHELL
$weekend=@("Saturday","Sunday")
$dayofweek=( get-date ).DayOfWeek


#two ways of doing the same thing. 
if($dayofweek -eq "Saturday" -or $dayofweek -eq "Sunday"){
    echo "its the weekend"
}else{
    echo "get back to work"
}


if($weekend -contains $dayofweek){
    echo "its the weekend"
}else{
    echo "back to work"
}

#echo $dayofweek