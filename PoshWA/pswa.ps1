### Install PSWA Components ###
## This is a test ##

#!/usr/bin/env powershell


#Install Powershell Web Access Feature
Function pswainst{
    If(!(Get-WindowsFeature -Name WindowsPowerShellWebAccess).installed)
    {
        Install-WindowsFeature -Name "WindowsPowerShellWebAccess" -IncludeAllSubFeature -IncludeManagementTools -Restart
    }
}

#Settings - install pswa web app, add auth rule, disable firewalls
Function settings{    
    Install-PswaWebApplication -UseTestCertificate
    Add-PswaAuthorizationRule -UserGroupName * -ComputerGroupName * -ConfigurationName *
    Set-NetFirewallProfile -All -Enabled False
}

## Call Functions ##
pswainst
settings
Exit 0