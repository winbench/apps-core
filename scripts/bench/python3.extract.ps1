param ($archive, $targetDir)

$LessMsi = App-Exe "Bench.LessMsi"
$TempDir = Get-ConfigValue "TempDir"
$CacheDir = Get-ConfigValue "AppsCacheDir"
$PyVer = App-Version "Bench.Python3"

$components = @(
    "core"
    "lib"
    "exe"
    "tcltk"
    "tools"
    "doc"
    # "launcher"
)

$downloadRequired = $false
foreach ($c in $components) {
    if (!(Test-Path "$CacheDir\python-${PyVer}-${c}.msi")) {
        $downloadRequired = $true
        break
    }
}

if ($downloadRequired) {
    $tmpDir = "$targetDir\python3-setup-archives"
    if (!(Test-Path $tmpDir)) {
        $_ = mkdir $tmpDir
    }
    echo "Downloading Python 3 MSI files..."
    Start-Process -Wait -FilePath $archive -ArgumentList @("/quiet", "/layout", "`"$tmpDir`"")

    foreach ($c in $components) {
        move "$tmpDir\${c}.msi" "$CacheDir\python-${PyVer}-${c}.msi"
    }
    del $tmpDir -Recurse -Force
}

echo "Extracting Python 3 MSI files..."
Empty-Dir $targetDir
foreach ($c in $components) {
    pushd $targetDir
    echo "  - $c"
    & $LessMsi x "$CacheDir\python-${PyVer}-${c}.msi" "$targetDir\" | Out-Null
    $exitCode = $LastExitCode
    popd
    if ($exitCode -ne 0) {
        Write-Error "Extracting Python 3 Component '$c' failed."
    }
}

move "$targetDir\SourceDir\*" "$targetDir\"
del "$targetDir\SourceDir"
