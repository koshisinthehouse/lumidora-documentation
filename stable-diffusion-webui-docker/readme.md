
https://github.com/AbdBarho/stable-diffusion-webui-docker/wiki/Setup


docker compose --profile download up --build
# wait until its done, then:
docker compose --profile [ui] up --build
# where [ui] is one of: invoke | auto | auto-cpu | comfy | comfy-cpu
if you don't know which ui to choose, invoke or auto are a good start.

Then access from http://localhost:7860/

Unfortunately, AMD GPUs #63 and Mac #35 are not supported, contributions to add support are very welcome!!!!!!!!!!

If you face any problems, check the FAQ page, or create a new issue.

