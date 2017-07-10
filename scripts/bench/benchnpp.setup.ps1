$nppDir = App-Dir "Bench.BenchNpp"
$configFile = App-SetupResource "Bench.BenchNpp" "config.xml"
cp $configFile $nppDir -Force
$langFile = App-SetupResource "Bench.BenchNpp" "userDefineLang.xml"
cp $langFile $nppDir -Force
