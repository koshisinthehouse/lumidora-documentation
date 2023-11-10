# Entferne das Verzeichnis "dist", wenn es vorhanden ist
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue dist

# Wechsle in das "dist"-Verzeichnis; beende das Skript, wenn der Wechsel fehlschlägt
New-Item -ItemType Directory -Path dist
Set-Location -Path dist -ErrorAction Stop

# Klonen Sie das Git-Repository
git clone https://github.com/oobabooga/text-generation-webui.git
Set-Location -Path text-generation-webui -ErrorAction Stop

#ln -s docker/{Dockerfilekokoko,docker-compose.yml,.dockerignore} .
#cp docker/.env.example .env
#Copy-Item -Path .\docker\.env.example -Destination .\docker\.env
# Edit .env and set TORCH_CUDA_ARCH_LIST based on your GPU model
#docker compose -f ./docker/docker-compose.yml up --build
docker compose up --build

# Wechsle zurück in das ursprüngliche Verzeichnis
Set-Location -Path $PSScriptRoot