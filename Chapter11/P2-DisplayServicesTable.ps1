$viewservices=gwmi win32_service | Format-Table Name, state, startmode, startname

echo $viewservices