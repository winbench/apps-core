$python = App-Exe "Bench.Python3"
if (!$python) { throw "Python3 not found" }

$pythonDir = App-Dir "Bench.Python3"

$pythonWrapper = [IO.Path]::Combine($pythonDir, "python3.cmd")
if (!(Test-Path $pythonWrapper -PathType Leaf)) {
    Write-Host "Creating wrapper to call Python 3 via 'python3' ..."
    "@`"%~dp0\python.exe`" %*" | Out-File $pythonWrapper -Encoding default
}

& $python -m ensurepip
& $python -m pip install --upgrade --no-warn-script-location pip setuptools wheel
