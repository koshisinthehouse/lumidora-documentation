docker build -t lumidora-tts .

docker run -e TEXT="Hallo Dominik"  -v lumidora-tts:/output -it lumidora-tts