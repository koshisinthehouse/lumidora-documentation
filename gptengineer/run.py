import vosk
import sys
import pyaudio

# Pfad zum Vosk-Modell im neuen Verzeichnis
custom_model_path = "D:/resources/stt/vosk/vosk-model-de-0.21"

# Laden Sie das benutzerdefinierte Vosk-Modell
model = vosk.Model(custom_model_path)

# Konfigurieren Sie das Mikrofon
sample_rate = 16000
chunk_size = 4000  # Sie können die Größe des Audiopuffers anpassen

p = pyaudio.PyAudio()
stream = p.open(format=pyaudio.paInt16,
                channels=1,
                rate=sample_rate,
                input=True,
                frames_per_buffer=chunk_size)

rec = vosk.KaldiRecognizer(model, sample_rate)

while True:
    data = stream.read(chunk_size)
    if len(data) == 0:
        break
    if rec.AcceptWaveform(data):
        result = rec.Result()
        print(result)
    else:
        partial_result = rec.PartialResult()
        print(partial_result)

print(rec.FinalResult())
