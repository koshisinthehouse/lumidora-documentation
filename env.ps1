$SOURCE_PATH = "D:"
$SOURCE_TOOLS_PATH = "$SOURCE_PATH/tools"

$EXECUTE_PATH = Split-Path $MyInvocation.MyCommand.Path
$DIST_PATH = "$EXECUTE_PATH/dist"

# Entferne das Verzeichnis "dist", wenn es vorhanden ist
Remove-Item -Recurse -Force -ErrorAction SilentlyContinue dist

# Erstelle das Verzeichnis "dist"
New-Item -ItemType Directory -Path ./dist

#ffmpeg - START

$TOOLS_PATH = "$DIST_PATH/tools/"
Expand-Archive -Path "$SOURCE_TOOLS_PATH/ffmpeg.zip" -DestinationPath $TOOLS_PATH
Invoke-Expression "$EXECUTE_PATH\envPath.ps1 -PATH '$TOOLS_PATH/ffmpeg/bin'"

#ffmpeg - ENDE


#python - START

$PYTHON_PATH = "$DIST_PATH/python"

Expand-Archive -Path "$SOURCE_TOOLS_PATH/python-3.9.0-embed-amd64.zip" -DestinationPath $PYTHON_PATH

Add-Content -Path "$PYTHON_PATH/python39._pth" -Value ".\lib\site-packages"

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