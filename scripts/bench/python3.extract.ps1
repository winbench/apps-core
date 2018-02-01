param ($archive, $targetDir)

$LessMsi = App-Exe "Bench.LessMsi"

$components = @(
    "core"
    "lib"
    "exe"
    "tcltk"
    "tools"
    "doc"
    # "launcher"
)

$msiDir = "$targetDir\setup_archives"
if (!(Test-Path $msiDir)) {
    $_ = mkdir $msiDir
}

echo "Downloading Python 3 MSI files..."
Start-Process -Wait -FilePath $archive -ArgumentList @("/quiet", "/layout", "`"$msiDir`"")

echo "Extracting Python 3 MSI files..."
foreach ($c in $components) {
    pushd $targetDir
    & $LessMsi x "$msiDir\${c}.msi" ".\"
    $exitCode = $LastExitCode
    popd
    if ($exitCode -ne 0) {
        Write-Error "Extracting Python 3 Component '$c' failed."
    }
}

move "$targetDir\SourceDir\*" "$targetDir\"
del "$targetDir\SourceDir"
