$nodeDir = App-Dir "Bench.Node"
$npm = Resolve-Path "$nodeDir\npm.cmd"

& $npm config set registry "https://registry.npmjs.org/"
if (Get-ConfigBooleanValue UseProxy) {
    & $npm config set "proxy" $(Get-ConfigValue HttpProxy)
    & $npm config set "https-proxy" $(Get-ConfigValue HttpsProxy)
} else {
    & $npm config delete "proxy"
    & $npm config delete "https-proxy"
}

$npmBak = "$nodeDir\npm-bak.cmd"
move $npm $npmBak
del "$nodeDir\npm"

del "$nodeDir\npx.cmd"
del "$nodeDir\npx"

& $npmBak install --global npm
del $npmBak
