from gpt4all import GPT4All
model = GPT4All("D:/resources/gpt4all/mistral-7b-openorca.Q4_0.gguf","D:/resources/gpt4all")



with model.chat_session():
    response1 = model.generate(prompt='hello', temp=0)
    print(response1)
    response2 = model.generate(prompt='write me a short poem', temp=0)
    response3 = model.generate(prompt='thank you', temp=0)
    print(model.current_chat_session)





