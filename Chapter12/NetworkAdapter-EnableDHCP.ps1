
#will (pseudo, since it relies on a proper description) filter wireless the network 
#adapters. 
Get-WmiObject win32_networkadapterconfiguration -Filter "description like '%wireless%'" | Invoke-WmiMethod -name EnableDHCP -WhatIf