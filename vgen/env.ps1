# Klonen Sie das Git-Repository
#git clone https://github.com/OpenTalker/SadTalker.git

# Wechsle in das "dist"-Verzeichnis; beende das Skript, wenn der Wechsel fehlschlägt
Set-Location -Path dist/SadTalker -ErrorAction Stop

#### download checkpoints models
#New-Item -ItemType Directory -Path ./checkpoints
#Invoke-WebRequest https://github.com/OpenTalker/SadTalker/releases/download/v0.0.2-rc/mapping_00109-model.pth.tar -OutFile ./checkpoints/mapping_00109-model.pth.tar
#Invoke-WebRequest https://github.com/OpenTalker/SadTalker/releases/download/v0.0.2-rc/mapping_00229-model.pth.tar -OutFile ./checkpoints/mapping_00229-model.pth.tar
#Invoke-WebRequest https://github.com/OpenTalker/SadTalker/releases/download/v0.0.2-rc/SadTalker_V0.0.2_256.safetensors -OutFile ./checkpoints/SadTalker_V0.0.2_256.safetensors
#Invoke-WebRequest https://github.com/OpenTalker/SadTalker/releases/download/v0.0.2-rc/SadTalker_V0.0.2_512.safetensors -OutFile ./checkpoints/SadTalker_V0.0.2_512.safetensors

### download enhancer models
#New-Item -ItemType Directory -Path ./gfpgan/weights
#Invoke-WebRequest https://github.com/xinntao/facexlib/releases/download/v0.1.0/alignment_WFLW_4HG.pth -OutFile ./gfpgan/weights/alignment_WFLW_4HG.pth
#Invoke-WebRequest https://github.com/xinntao/facexlib/releases/download/v0.1.0/detection_Resnet50_Final.pth -OutFile ./gfpgan/weights/detection_Resnet50_Final.pth
#Invoke-WebRequest https://github.com/TencentARC/GFPGAN/releases/download/v1.3.0/GFPGANv1.4.pth -OutFile ./gfpgan/weights/GFPGANv1.4.pth
#Invoke-WebRequest https://github.com/xinntao/facexlib/releases/download/v0.2.2/parsing_parsenet.pth -OutFile ./gfpgan/weights/parsing_parsenet.pth


# Erstelle eine virtuelle Umgebung
virtualenv venv
.\venv\Scripts\activate
pip install -r requirements.txt


# Wechsle zurück in das ursprüngliche Verzeichnis
Set-Location -Path $PSScriptRoot

