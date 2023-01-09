$itemstodelete= 


$itemstodelete | foreach-object { $_ | Remove-Item } 