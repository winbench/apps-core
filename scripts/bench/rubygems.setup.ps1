$ruby = App-Exe "Bench.Ruby"
$gemsTmpDir = App-Dir "Bench.RubyGems"

$packageDir = gci "$gemsTmpDir\rubygems-*" | Sort-Object -Descending | Select-Object -First 1
cd $packageDir
& $ruby setup.rb
