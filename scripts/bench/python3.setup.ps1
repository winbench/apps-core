$python = App-Exe "Bench.Python3"
$7z = App-Exe "Bench.7z"
if (!$python) { throw "Python3 not found" }

$pythonDir = App-Dir "Bench.Python3"
$cpythonVersion = Get-AppConfigValue "Bench.Python3" "CPythonVersion"
$pythonLibArchive = "$pythonDir\python${cpythonVersion}.zip"
$pythonLib = "$pythonDir\Lib"

if (Test-Path $pythonLibArchive)
{
	& $7z x $pythonLibArchive "-o$pythonLib"
	#del $pythonLibArchive
}

$pythonWrapper = [IO.Path]::Combine($pythonDir, "python3.cmd")
if (!(Test-Path $pythonWrapper -PathType Leaf)) {
    Write-Host "Creating wrapper to call Python 3 via 'python3' ..."
    "@CALL `"%~dp0\python.exe`" %*" | Out-File $pythonWrapper -Encoding default
}
