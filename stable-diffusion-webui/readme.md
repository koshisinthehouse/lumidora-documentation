docker build --platform linux/amd64 --build-arg BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ') --build-arg BUILD_VERSION=custom-cuda -t lumidora-stable-diffusion-webui .

docker run -v output:/output -it lumidora-stable-diffusion-webui bash webui.sh --share




docker run -it --name sdw --gpus all --network host -v $(pwd)/models:/app/stable-diffusion-webui/models -v $(pwd)/outputs:/app/stable-diffusion-webui/outputs --rm siutin/stable-diffusion-webui-docker:latest-cuda bash webui.sh --share