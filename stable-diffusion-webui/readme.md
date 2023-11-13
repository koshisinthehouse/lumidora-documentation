docker build --no-cache -t lumidora-stable-diffusion-webui .

docker run --gpus all -p 7860:7860 -v lumidora-stable-diffusion-webui:/app/stable-diffusion-webui/outputs lumidora-stable-diffusion-webui

docker exec -it [container id] /bin/bash
