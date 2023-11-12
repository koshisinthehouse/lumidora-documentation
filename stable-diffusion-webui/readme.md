docker build --no-cache -t lumidora-stable-diffusion-webui .

docker run --gpus all -p 7860:7860 lumidora-stable-diffusion-webui




docker run --gpus all -it -p 7860:7860 --entrypoint /bin/bash lumidora-stable-diffusion-webui


-v output:/output



#nur mit CPU starten
./webui.sh -f  --skip-torch-cuda-test --precision full --no-half


#--enable-insecure-extension-access
# gpu
./webui.sh -f --xformers --listen

#--lowvram --precision full --no-half



docker run -it --name sdw --gpus all --network host -v $(pwd)/models:/app/stable-diffusion-webui/models -v $(pwd)/outputs:/app/stable-diffusion-webui/outputs --rm siutin/stable-diffusion-webui-docker:latest-cuda bash webui.sh --share