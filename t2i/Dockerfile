# Verwenden Sie das offizielle Python 3.9-Image als Basis
FROM python:3.10.6

# Aktualisieren Sie das Paketverzeichnis und installieren Sie die erforderlichen Pakete
RUN apt-get update && apt-get install -y git

WORKDIR /app

# Herunterladen der webui.sh-Datei und direkt ausführen
RUN wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh && chmod +x webui.sh && ./webui.sh -f can_run_as_root=0

# Setzen Sie die Arbeitsverzeichnis im Container

RUN dir

# Befehl zum Ausführen Ihrer Python-Datei mit der übergebenen Variable
CMD ["~/stable-diffusion-webui/webui.sh"]

