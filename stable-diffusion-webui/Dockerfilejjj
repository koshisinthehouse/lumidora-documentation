# Verwenden Sie das offizielle Python 3.9-Image als Basis
FROM debian:11

RUN apt update -y
RUN apt install wget git python3 python3-venv libgl1 libglib2.0-0 -y



WORKDIR /app/

RUN wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh

RUN ["chmod", "+x", "/app/webui.sh"]
RUN /app/webui.sh -f --skip-torch-cuda-test



# Erstellen Sie das Ausgabeverzeichnis innerhalb des Containers
#RUN mkdir /output

# Kopieren Sie Ihre Python-Datei in das Image
#COPY run.py /app/

# Setzen Sie die Arbeitsverzeichnis im Container


# Befehl zum Ausführen Ihrer Python-Datei mit der übergebenen Variable
#CMD ["python", "run.py"]

