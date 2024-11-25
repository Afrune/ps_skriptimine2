# Check Notepad Status
while($true) {
     # Check if Notepad is running
     $proc = Get-Process -Name "notepad" -ErrorAction SilentlyContinue

     if ($proc) {
         Write-Host "Notepad is running" -ForegroundColor Green
     } else {
         Write-Host "Notepad is not running" -ForegroundColor Red
         break
     }
     # Wait for 2 seconds before checking again
     Start-Sleep -Seconds 2
}