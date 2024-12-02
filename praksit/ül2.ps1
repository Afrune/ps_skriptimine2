#Asks for first and lastname
$ekfname =@(Read-Host "Sisesta oma eesnimi: ")
$eklname =@(Read-Host "Sisesta oma perenimi: ")
$kfname = $ekfname.ToLower()
$klname = $eklname.ToLower()
$kflname = "$kfname.$klname"
#Checks if user exists and then removes it
if(Get-LocalUser -Name $kflname -ErrorAction SilentlyContinue) {
    Remove-LocalUser -Name $kflname
    Write-Host "Given user $kflname has been removed."
} else {
     Write-Host "Given user $kflname doesnt exist."
}
