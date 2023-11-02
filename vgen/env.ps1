# Wechsle in das "dist"-Verzeichnis; beende das Skript, wenn der Wechsel fehlschlägt
New-Item -ItemType Directory -Path dist
Set-Location -Path dist -ErrorAction Stop

# Klonen Sie das Git-Repository
git clone https://github.com/OpenTalker/SadTalker.git
Set-Location -Path SadTalker -ErrorAction Stop

#### download checkpoints models
New-Item -ItemType Directory -Path ./checkpoints
Copy-Item -Path "D:\resources\SadTalker\checkpoints" -Destination "./checkpoints/" -Recurse

### download enhancer models
New-Item -ItemType Directory -Path ./gfpgan
Copy-Item -Path "D:\resources\SadTalker\gfpgan" -Destination "./gfpgan/" -Recurse

# Erstelle eine virtuelle Umgebung
virtualenv venv
.\venv\Scripts\activate
pip install -r requirements.txt


# Wechsle zurück in das ursprüngliche Verzeichnis
Set-Location -Path $PSScriptRoot

