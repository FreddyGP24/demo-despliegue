$archivoOrigen = Join-Path $PSScriptRoot '.\origen\index.php'
$archivoDestino = Join-Path $PSScriptRoot '.\pruebas\index.php'

C:\xampp\php\php.exe -l $archivoOrigen

if ($LASTEXITCODE -ne 0) {
    Write-Host "Hay un error de sintaxis. No se publico el cambio."
    exit 1
}
Copy-Item $archivoOrigen $archivoDestino -Force -ErrorAction Stop
Write-Host "Version publicada en el ambiente de pruebas."
