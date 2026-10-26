# API de LLM sem censura para desenvolvedores no Brasil — quickstart
# pip install openai
import os
from openai import OpenAI

client = OpenAI(base_url="https://uncensored-llm.sbs/v1", api_key=os.environ["UNLLM_KEY"])
r = client.chat.completions.create(
    model="uncensored-llm",
    messages=[{"role": "user", "content": "Explique, sem rodeios, como funciona capitalização de mercado de cripto."}],
)
print(r.choices[0].message.content)
