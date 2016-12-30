$nugetExe = App-Exe "Bench.NuGet"
if (!$nugetExe) { throw "NuGet executable not found" }

if (Get-ConfigBooleanValue UseProxy) {
    & $nugetExe config -Set "HTTP_PROXY=$(Get-ConfigValue HttpProxy)"
} else {
    & $nugetExe config -Set "HTTP_PROXY="
}
