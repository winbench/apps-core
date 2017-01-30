$ruby = App-Exe "Bench.Ruby"
$gemsTmpDir = App-Dir "Bench.RubyGems"

$packageDir = gci "$gemsTmpDir\rubygems-*" | Sort-Object -Descending
cd $packageDir
& $ruby setup.rb
