<#
                .NOTES
                ===========================================================================
                Created with:   SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.82
                Created on:       10/28/2015 1:24 PM

                Filename:           template.ps1     
                ===========================================================================
                .DESCRIPTION
                                run once script
#>
 
 
#Test of parameter passing


                #Add-Log -Type Information -Message "Checking for User Environment file"
                #agentSendLogMessage "$(executiontime) - Checking for User Environment file"
 
param(
            [string]
            $login,
            [string]
            $pass
    ) 
    
    $apppath = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
    $domain = "vl"


                                #run app as specific user
       $password = $pass | convertto-securestring -AsPlainText -Force
            $StartApp = new-object system.Diagnostics.ProcessStartInfo
            $StartApp.UserName = $login
            $StartApp.Password = $password
            $StartApp.Domain = $domain
            $StartApp.UseShellExecute = $false            
            $StartApp.FileName = $apppath
            [System.Diagnostics.Process]::Start($StartApp)
 
        New-Item -Name newfile -Path c:\tmp -ItemType "file"
        Add-Content c:\tmp\newfile.txt -Value "this is it $loginName and $newPass"

 
#region Main
 
#endregion



    <#            $counter = 0
                do
                {
                $checkfor = Test-Path $pspath 
                                sleep 5
                                $counter++
                }
                until
                (
                $checkfor -eq $true -or $counter -ge 300
                )
                
                if ($counter -ge 300)
                {
                                #Add-Log -Type Information -Message "Didn't find User Environment file"
                                #agentSendLogMessage "$(executiontime) - Didn't find User Environment file"
        "exceeded counter"
                                
                }
                
                #sleep 10
                
                if ($checkfor)
                {do stuff}
#>
