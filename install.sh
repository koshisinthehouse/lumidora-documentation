mkdir "dist"




#Sad talker - START
git clone https://github.com/OpenTalker/SadTalker.git
conda create -n sadtalker python=3.8

conda activate sadtalker

pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113

conda install ffmpeg

pip install -r requirements.txt

#sad talker - END

### Coqui TTS is optional for gradio demo.
### pip install TTS