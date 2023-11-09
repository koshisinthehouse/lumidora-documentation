# Entferne das Verzeichnis "dist", wenn es vorhanden ist
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue dist

# Wechsle in das "dist"-Verzeichnis; beende das Skript, wenn der Wechsel fehlschlägt
New-Item -ItemType Directory -Path dist
Set-Location -Path dist -ErrorAction Stop

# Klonen Sie das Git-Repository
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
Set-Location -Path stable-diffusion-webui -ErrorAction Stop


# Wechsle zurück in das ursprüngliche Verzeichnis
Set-Location -Path $PSScriptRoot