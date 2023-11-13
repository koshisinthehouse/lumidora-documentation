FROM nvidia/cuda:12.1.0-runtime-ubuntu22.04
#FROM debian:11

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

RUN wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh

RUN ["chmod", "+x", "/app/webui.sh"]
RUN /app/webui.sh -f

WORKDIR /app/stable-diffusion-webui/

RUN git clone https://github.com/deforum-art/deforum-for-automatic1111-webui ./extensions/deforum-for-automatic1111-webui
RUN git clone https://github.com/AlUlkesh/stable-diffusion-webui-images-browser ./extensions/stable-diffusion-webui-images-browser

# Problem beim laden von einer Festplatte bsp.: D:/resources/stable-diffusion/models !!!!
COPY ./models /app/stable-diffusion-webui/models

RUN pip3 install xformers
RUN pip3 install triton
RUN python -m xformers.info output

CMD ./webui.sh -f --listen --xformers --no-half-vae --global-extensions-access

EXPOSE 7860


