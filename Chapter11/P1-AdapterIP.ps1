#this will choose the wireless adapter then reset it. 
$resetadapter=get-wmiobject win32_networkadapterconfiguration -filter index=14 
echo "resetting the adapter..."
$resetadapter | Invoke-WmiMethod -name renewdhcplease
echo "DONE"