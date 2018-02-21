### Install PSWA Components ###
## This is a test ##

Install-WindowsFeature -Name "WindowsPowerShellWebAccess" -IncludeAllSubFeature -IncludeManagementTools -Restart
Install-PswaWebApplication -UseTestCertificate
Add-PswaAuthorizationRule -UserGroupName * -ComputerGroupName * -ConfigurationName *