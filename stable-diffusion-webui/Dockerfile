# Verwenden Sie das offizielle Python 3.9-Image als Basis
FROM nvidia/cuda:12.1.0-runtime-ubuntu22.04


#FROM nvidia/cuda:11.1.1-devel-ubi8


#FROM debian:11
#FROM nvidia/cuda:12.1.0-devel-ubuntu22.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y
RUN apt upgrade -y
RUN apt install wget -y
RUN apt install git -y
RUN apt install python3 -y
RUN apt install python3-venv -y
RUN apt install python3-pip -y
RUN apt install python-is-python3 -y
RUN apt install libgl1 -y
RUN apt install libglib2.0-0 -y

RUN apt install libtcmalloc-minimal4 -y

WORKDIR /app

#RUN pip3 install --upgrade pip setuptools wheel ninja
#RUN pip3 install --upgrade pip
#RUN pip3 install xformers
#RUN pip3 install triton
#RUN pip3 install numexpr
#RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

RUN pip3 install xformers

RUN wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh
#RUN pip3 install torch torchvision torchaudio

RUN ["chmod", "+x", "/app/webui.sh"]
RUN /app/webui.sh -f

# Problem beim laden von einer Festplatte bsp.: D:/resources/stable-diffusion/models !!!!
COPY ./models /app/stable-diffusion-webui/models

RUN pip3 install torch==2.0.1 torchvision torchaudio
# Erstellen Sie das Ausgabeverzeichnis innerhalb des Containers
#RUN mkdir /output

#EXPOSE 7860

#CMD ["start","/app/stable-diffusion-webui/webui.sh"]
#CMD ["/bin/bash","/app/stable-diffusion-webui/webui.sh", " -f"]
CMD /bin/bash /app/stable-diffusion-webui/webui.sh -f




