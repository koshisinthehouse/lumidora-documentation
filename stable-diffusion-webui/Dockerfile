# Verwenden Sie das offizielle Python 3.9-Image als Basis
FROM nvidia/cuda:12.1.0-devel-ubuntu22.04
# as builder
#FROM nvidia/cuda:11.7.1-base-ubuntu22.04
#FROM debian:11
#FROM nvidia/cuda:11.2.2-base
ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y
RUN apt upgrade -y
RUN apt install wget -y
RUN apt install git -y
RUN apt install python3 -y
RUN apt install python3-venv -y
RUN apt install python3-pip \
RUN apt install python-is-python3
RUN apt install libgl1 -y
RUN apt install libglib2.0-0 -y

RUN apt install libtcmalloc-minimal4 -y
#export LD_PRELOAD="/usr/lib/libtcmalloc_minimal.so.4"

WORKDIR /app/

RUN wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh

#sudo apt install git python3.10-venv -y
#git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui && cd stable-diffusion-webui
#python3.10 -m venv venv

RUN ["chmod", "+x", "/app/webui.sh"]
RUN /app/webui.sh -f

#RUN /app/webui.sh -f --skip-torch-cuda-test
#RUN /app/webui.sh -can_run_as_root 1


# Problem beim laden von einer Festplatte bsp.: D:/resources/stable-diffusion/models !!!!
COPY ./models /app/stable-diffusion-webui/models


RUN pip3 install --upgrade pip
RUN pip3 install xformers==0.0.16
RUN pip3 install triton==2.0.0
RUN pip3 install numexpr

# Erstellen Sie das Ausgabeverzeichnis innerhalb des Containers
#RUN mkdir /output

# Kopieren Sie Ihre Python-Datei in das Image
#COPY run.py /app/

# Setzen Sie die Arbeitsverzeichnis im Container


# Befehl zum Ausführen Ihrer Python-Datei mit der übergebenen Variable
#CMD ["start","/app/stable-diffusion-webui/webui.sh"]
#CMD ["/bin/bash","/stable-diffusion-webui/webui.sh"]

