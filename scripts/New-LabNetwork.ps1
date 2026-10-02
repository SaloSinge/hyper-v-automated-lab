$config = (get-content .\config\lab.json | convertfrom-Json)
$switches = ($config.switches
)

foreach ($switch in $switches) {

if (Get-VMSwitch -Name $switch.name -ErrorAction SilentlyContinue) {

    Write-Host "$($switch.name) already here"

}
else {
    Write-Host "$($switch.name) dont exist, creation..."
    New-VMSwitch -Name $switch.name -SwitchType $switch.type
}
}