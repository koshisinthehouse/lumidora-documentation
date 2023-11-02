# Verwenden Sie das offizielle Python 3.9-Image als Basis
FROM python:3.9

# PIP Aktualisieren
RUN  pip install --upgrade pip

# Installieren Sie das gewünschte TTS-Paket (z. B. pyttsx3)
RUN pip install tts==0.19.1

# Erstellen Sie das Ausgabeverzeichnis innerhalb des Containers
RUN mkdir /output

# Kopieren Sie Ihre Python-Datei in das Image
COPY run.py /app/

# Setzen Sie die Arbeitsverzeichnis im Container
WORKDIR /app/

# Befehl zum Ausführen Ihrer Python-Datei mit der übergebenen Variable
CMD ["python", "run.py"]