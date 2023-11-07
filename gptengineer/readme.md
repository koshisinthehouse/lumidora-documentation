OPENAI_API_BASE=http://<host>:<port>/v1 python -m gpt_engineer.cli.main benchmark/pomodoro_timer --steps benchmark TheBloke_WizardCoder-Python-34B-V1.0-GPTQ



docker run -it --rm -e OPENAI_API_KEY="YOUR OPENAI KEY" -e OPENAI_API_BASE=http://127.0.0.1:5000/v1 -v ./your-project:/project gpt-engineer

läuft mit python 3.8


$env:OPENAI_API_BASE="127.0.0.1:5000"
$env:OPENEDAI_EMBEDDING_MODEL="mistral-7b-openorca.Q4_0.gguf"
$env:OPENAI_API_KEY="[your api key]"

