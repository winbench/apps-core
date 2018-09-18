if (Test-Path env:NODE_ICU_DATA) {
    del env:NODE_ICU_DATA
}
npm uninstall --global full-icu
