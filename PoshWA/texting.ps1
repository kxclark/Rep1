param(
        [string]
        $login,
        [string]
        $pass
      )


New-Item -Name neww.txt -Path "c:\tmp" -ItemType "file"

sleep 5

Add-Content -Path "c:\tmp\neww.txt" -Value "Line 1 add content works!"

Add-Content -Path "c:\tmp\neww.txt" -Value "this is a $login and $pass"
