
$EXECUTE_PATH = Split-Path $MyInvocation.MyCommand.Path
$DIST_PATH = "$EXECUTE_PATH/dist"

# Entferne das Verzeichnis "dist", wenn es vorhanden ist
#Remove-Item -Recurse -Force -ErrorAction SilentlyContinue dist

# Erstelle das Verzeichnis "dist"
#New-Item -ItemType Directory -Path ./dist

# Wechsle in das "dist"-Verzeichnis; beende das Skript, wenn der Wechsel fehlschlägt


#ffmpeg - START
Invoke-Expression "$EXECUTE_PATH\envPath.ps1 -PATH '$EXECUTE_PATH/tools/ffmpeg'"
#ffmpeg - ENDE


#python - START

$PYTHON_PATH = "$DIST_PATH/python"

Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.8.0/python-3.8.0-embed-amd64.zip" -OutFile "python-3.8.0-embed-amd64.zip"
Expand-Archive -Path "python-3.8.0-embed-amd64.zip" -DestinationPath $PYTHON_PATH

Add-Content -Path "$PYTHON_PATH/python38._pth" -Value ".\lib\site-packages"

Invoke-Expression "$EXECUTE_PATH\envPath.ps1 -PATH '$PYTHON_PATH'"
Invoke-Expression "$EXECUTE_PATH\envPath.ps1 -PATH '$PYTHON_PATH'"

Invoke-Expression "python --version"

$PYTHON_SCRIPT_PATH = "$PYTHON_PATH\Scripts"
Invoke-Expression "$EXECUTE_PATH\envPath.ps1 -PATH '$PYTHON_SCRIPT_PATH'"
Invoke-Expression "$EXECUTE_PATH\envPath.ps1 -PATH '$PYTHON_SCRIPT_PATH'"

Invoke-WebRequest "https://bootstrap.pypa.io/get-pip.py" -OutFile "$PYTHON_PATH./get-pip.py"
Invoke-Expression "$PYTHON_PATH\python get-pip.py"

Invoke-Expression "pip -V"

Invoke-Expression "$PYTHON_PATH\python -m pip install virtualenv"

#python - ENDE