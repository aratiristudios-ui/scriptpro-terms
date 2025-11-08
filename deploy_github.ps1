# Script PowerShell para ayudar a publicar en GitHub Pages usando la CLI gh
# Uso: abre PowerShell en esta carpeta (website/terms) y ejecuta: .\deploy_github.ps1 -RepoName your-terms-site -Visibility public
param(
    [string]$RepoName = "terms-site",
    [string]$Visibility = "public",
    [string]$Branch = "main"
)

# Comprueba si gh está instalado
$gh = Get-Command gh -ErrorAction SilentlyContinue
if (-not $gh) {
    Write-Host "La CLI 'gh' no está instalada. Instala desde https://cli.github.com/ y vuelve a ejecutar." -ForegroundColor Yellow
    exit 1
}

# Inicializa git si hace falta
if (-not (Test-Path .git)) {
    git init
    git checkout -b $Branch
}

git add .
git commit -m "Publish terms and conditions site" -q

# Crea el repositorio y empuja el contenido
$createCmd = "gh repo create $RepoName --public --source=. --remote=origin --push"
if ($Visibility -ieq "private") {
    $createCmd = "gh repo create $RepoName --private --source=. --remote=origin --push"
}

Write-Host "Ejecutando: $createCmd"
Invoke-Expression $createCmd

Write-Host "Repositorio creado y contenido empujado. Ahora configura GitHub Pages en la sección Settings → Pages si es necesario." -ForegroundColor Green
