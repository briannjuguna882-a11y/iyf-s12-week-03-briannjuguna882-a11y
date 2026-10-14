param(
    [Parameter(Mandatory = $true)]
    [string]$ProjectName
)

$folders = @(
    "$ProjectName/src/css",
    "$ProjectName/src/js",
    "$ProjectName/src/images",
    "$ProjectName/docs",
    "$ProjectName/tests"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
}

$files = @(
    "$ProjectName/README.md",
    "$ProjectName/src/index.html",
    "$ProjectName/src/css/styles.css",
    "$ProjectName/src/js/main.js"
)

foreach ($file in $files) {
    New-Item -ItemType File -Path $file -Force | Out-Null
}

Set-Content -Path "$ProjectName/README.md" -Value "# $ProjectName"

Write-Host "Project $ProjectName created successfully!"