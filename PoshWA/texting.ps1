param(
        [string]
        $login,
        [string]
        $pass
      )

#if(!Get-ChildItem c:\tmp\neww.txt)
#{
New-Item -Name neww.txt -Path c:\tmp -ItemType "file"
#}
sleep 5

Write-Verbose "running add content"
Add-Content -Path "c:\tmp\neww.txt" -Value "Line 1 add content works!"
Add-Content -Path "c:\tmp\neww.txt" -Value "this is a $login and $pass"
