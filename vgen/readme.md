Python 3.8

python inference.py --driven_audio D:\resources\audio.wav --source_image D:\resources\face.png --still --preprocess full --enhancer gfpgan 


\\wsl.localhost\docker-desktop-data\data\docker\volumes\lumidora-vgen\_data


docker run --gpus "all" --rm -v lumidora-vgen:/host_dir wawa9000/sadtalker --driven_audio /host_dir/sound.wav --source_image /host_dir/image.jpg --expression_scale 1.0 --still --enhancer gfpgan --result_dir /host_dir

