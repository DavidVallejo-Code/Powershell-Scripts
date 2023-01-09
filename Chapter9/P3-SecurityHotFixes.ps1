#view security updates
$securityhotfixGet=get-HotFix|Where-Object -filter {$_.Description -like "Security*"}

echo $securityhotfixGet