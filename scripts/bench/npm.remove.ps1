$node = App-Exe "Bench.Node"
if (!$node) { throw "NodeJS not found" }
$nodeDir = App-Dir "Bench.Node"
$npm = App-Exe "Bench.Npm"
if (!$npm) { throw "Node Package Manager not found" }

& $node "$nodeDir\node_modules\npm\bin\npm-cli.js" remove --global "npm"
