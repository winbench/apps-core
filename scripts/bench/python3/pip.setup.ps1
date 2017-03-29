$targetDir = App-Dir "Bench.Python3.Pip"
$bootstrap = "$targetDir\get-pip.py"
$python3 = App-Exe "Bench.Python3"

if (!(Test-Path $python3))
{
    Write-Error "Python3 not found."
    return
}

cd $targetDir
& $python3 $bootstrap
