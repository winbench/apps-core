$nodeDir = App-Dir "Bench.Node"
$npm = Resolve-Path "$nodeDir\npm.cmd"

$npmBak = "$nodeDir\npm-bak.cmd"
move $npm $npmBak
del "$nodeDir\npm"

del "$nodeDir\npx.cmd"
del "$nodeDir\npx"

& $npmBak install --global npm
del $npmBak
