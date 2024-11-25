
$counter = 0
do{
    $counter++

    $proc = Get-Process -Name "notepad" -ErrorAction SilentlyContinue

    if($proc){
      Write-Host "Notepad is running" -ForegroundColor DarkGreen
    }else{
       Write-Host "Notepad is not running" -ForegroundColor DarkRed
       break
    }

    Start-Sleep -Seconds 1
}while($proc)

Write-Host "$counter"
