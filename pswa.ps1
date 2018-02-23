### Install PSWA Components ###
## This is a test ##

#!/usr/bin/env powershell

Install-WindowsFeature -Name "WindowsPowerShellWebAccess" -IncludeAllSubFeature -IncludeManagementTools -Restart
Install-PswaWebApplication -UseTestCertificate
Add-PswaAuthorizationRule -UserGroupName * -ComputerGroupName * -ConfigurationName *