if (Test-Path env:NODE_ICU_DATA) {
    del env:NODE_ICU_DATA
}
npm install --global full-icu
