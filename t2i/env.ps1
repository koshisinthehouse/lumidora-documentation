# Entferne das Verzeichnis "dist", wenn es vorhanden ist
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue dist

# Wechsle in das "dist"-Verzeichnis; beende das Skript, wenn der Wechsel fehlschlägt
New-Item -ItemType Directory -Path dist
Set-Location -Path dist -ErrorAction Stop

# Klonen Sie das Git-Repository
git clone https://github.com/AbdBarho/stable-diffusion-webui-docker.git
Set-Location -Path stable-diffusion-webui-docker -ErrorAction Stop


docker compose --profile download up --build
# wait until its done, then:
docker compose --profile auto up --build
# where [ui] is one of: invoke | auto | auto-cpu | comfy | comfy-cpu