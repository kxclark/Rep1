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
Add-Content -Path c:\tmp\neww.txt -Value "this is a $login and $pass"
