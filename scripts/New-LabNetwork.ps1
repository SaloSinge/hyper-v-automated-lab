$switches = @(
    "SW_LAN",
    "SW_DMZ"
)

foreach ($switch in $switches) {

if (Get-VMSwitch -Name $switch -ErrorAction SilentlyContinue) {

    Write-Host "$switch dont exist"

}
else {
    Write-Host "$switch dont exist, creation..."
    New-VMSwitch -Name $switch -SwitchType Private
}
}