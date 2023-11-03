docker build -t lumidora-tts .

docker run -e TEXT="Hallo Dominik"  -v output:/output -it lumidora-tts