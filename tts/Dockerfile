# Verwenden Sie das offizielle Python 3.9-Image als Basis
FROM ubuntu:18.04

RUN apt update -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt update -y
RUN apt install python3.9 python3-pip -y

# PIP Aktualisieren
RUN  pip install --upgrade pip

# Installieren Sie das gewünschte TTS-Paket (z. B. pyttsx3)
RUN pip install TTS

RUN pip install python-espeak

# Erstellen Sie das Ausgabeverzeichnis innerhalb des Containers
RUN mkdir /output

# Kopieren Sie Ihre Python-Datei in das Image
COPY run.py /app/

# Setzen Sie die Arbeitsverzeichnis im Container
WORKDIR /app/

# Befehl zum Ausführen Ihrer Python-Datei mit der übergebenen Variable
CMD ["python", "run.py"]

