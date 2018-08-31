$program = Read-Host "Enter a program"

Start-Process $program

Start-Sleep -s 5

Stop-Process -Name $program