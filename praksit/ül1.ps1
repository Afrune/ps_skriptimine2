$efname =@(Read-Host "Sisesta oma eesnimi: ")
$elname =@(Read-Host "Sisesta oma perenimi: ")
$fname = $efname.ToLower()
$lname = $elname.ToLower()
$flname ="$fname.$lname"
$password = ConvertTo-SecureString "Parool1!" -AsPlainText -Force
if(Get-LocalUser -Name $flname -ErrorAction SilentlyContinue) {
   Write-Host "The user '$flname' already exists."
} else {
   New-LocalUser -Name $flname -Password $password -FullName "$efname $elname"
   Write-Host "User '$flname' has been created successfully."
}
