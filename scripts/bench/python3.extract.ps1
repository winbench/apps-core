param ($archive, $targetDir)

$Dark = App-Exe "Bench.WiX3"
$LessMsi = App-Exe "Bench.LessMsi"
$TempDir = Get-ConfigValue "TempDir"
$CacheDir = Get-ConfigValue "AppsCacheDir"

echo "Extracting Python 3 MSI bundle..."
$tmpDir = "$TempDir\python3"
Empty-Dir $tmpDir | Out-Null
pushd $tmpDir
& $Dark -x $tmpDir $archive
$exitCode = $LastExitCode
popd
if ($exitCode -ne 0) {
    Write-Error "Extracting Python 3 Bundle failed with exit code $exitCode"
}

$components = @(
    "core"
    "lib"
    "exe"
    "dev"
    "tcltk"
    "doc"
    "pip"
)

echo "Extracting Python 3 MSI files..."
Empty-Dir $targetDir
foreach ($c in $components) {
    pushd $targetDir
    $p = "$tmpDir\AttachedContainer\${c}.msi"
    echo "  - $c"
    & $LessMsi x $p "$targetDir\" | Out-Null
    $exitCode = $LastExitCode
    popd
    if ($exitCode -ne 0) {
        Write-Error "Extracting Python 3 Component '$c' failed."
    }
}

move "$targetDir\SourceDir\*" "$targetDir\"
del "$targetDir\SourceDir"
Purge-Dir $tmpDir
