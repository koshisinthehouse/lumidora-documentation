import os

variable_value = os.environ.get('TEXT', 'Standardwert')
print(f'Die übergebene Variable ist: {variable_value}')




from TTS.api import TTS

# Init TTS with the target model name
tts = TTS(model_name="tts_models/de/thorsten/tacotron2-DDC", progress_bar=False).to("cuda")

# Run TTS
tts.tts_to_file(text=variable_value, file_path="/output")
