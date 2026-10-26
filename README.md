# API de LLM sem censura para desenvolvedores no Brasil

> Uma API compatível com OpenAI que responde o que foi perguntado. Sem recusa genérica, sem aviso de segurança no lugar do conteúdo, sem meia resposta. Base URL: https://uncensored-llm.sbs/v1

**API:** https://uncensored-llm.sbs/v1
**Site:** https://uncensored-llm.sbs

Se você já tentou usar um modelo de linguagem para escrever sobre política, saúde, segurança ofensiva ou qualquer tema que o fornecedor estrangeiro considera sensível, conhece o resultado: recusa genérica, aviso de segurança no lugar de conteúdo, resposta pela metade. Esta página descreve uma alternativa direta — uma API compatível com OpenAI que responde a pergunta feita.

## Por que isso importa para quem está no Brasil

A maioria dos projetos brasileiros não precisa de um modelo que decida o que o usuário deve ouvir; precisa de um modelo que escreva em português, entenda contexto local e não cuspa um parágrafo de aviso a cada prompt sobre política, saúde ou dinheiro. Pior ainda quando o produto é em português e o modelo responde em inglês mesmo com o prompt em pt-BR. Esta API aceita system prompt e instruções de idioma e cumpre — com streaming, tool calling e JSON mode, do mesmo jeito que qualquer cliente OpenAI já faz hoje.

## Exemplo de chamada

```bash
export UNLLM_KEY="sk-..."
curl https://uncensored-llm.sbs/v1/chat/completions \
  -H "Authorization: Bearer $UNLLM_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"uncensored-llm","messages":[{"role":"user","content":"Explique, sem rodeios, como funciona capitalização de mercado de cripto."}],"stream":true}'
```

```python
# pip install openai
from openai import OpenAI
client = OpenAI(base_url="https://uncensored-llm.sbs/v1", api_key="sk-...")
r = client.chat.completions.create(
    model="uncensored-llm",
    messages=[{"role": "user", "content": "Explique, sem rodeios, como funciona capitalização de mercado de cripto."}],
)
print(r.choices[0].message.content)
```

```javascript
import OpenAI from "openai";
const ai = new OpenAI({ baseURL: "https://uncensored-llm.sbs/v1", apiKey: process.env.UNLLM_KEY });
const r = await ai.chat.completions.create({ model: "uncensored-llm", messages: [{ role: "user", content: "Explique, sem rodeios, como funciona capitalização de mercado de cripto." }] });
console.log(r.choices[0].message.content);
```

## Onde isso costuma ser usado

| Caso | Por que |
|---|---|
| Atendimento sob medida | Bot de vendas que não vira um script de disclaimer. |
| Conteúdo pt-BR | Posts, e-mails e roteiros sem tom de tradução automática. |
| Pesquisa autorizada | Trabalho de segurança ofensiva feito com permissão escrita. |
| Escrita adulta (18+) | Ficção entre adultos, com detalhe, sem fade to black. |

## Latência do seu estado

Latência depende da sua operadora, não do país. Meça da sua máquina antes de culpar a API:

```bash
curl -o /dev/null -s -w '%{time_total}s\n' https://uncensored-llm.sbs/v1/models
```

| Cidade | Região |
|---|---|
| São Paulo | Sudeste |
| Rio de Janeiro | Sudeste |
| Belo Horizonte | Sudeste |
| Curitiba | Sul |
| Porto Alegre | Sul |
| Recife | Nordeste |
| Fortaleza | Nordeste |
| Salvador | Nordeste |
| Brasília | Centro-Oeste |
| Manaus | Norte |
| Belém | Norte |

## Perguntas que aparecem de verdade

### É compatível com o SDK da OpenAI?

Sim. Basta apontar base_url para https://uncensored-llm.sbs/v1 e manter o api_key. chat.completions e models.list funcionam sem adaptação.

### Preciso de cartão internacional?

As condições de pagamento vigentes estão em https://uncensored-llm.sbs e mudam de tempos em tempos. O foco é desenvolvedor, não cobrança em dólar com IOF em cima de cada token.

### Qual é o filtro?

Filtro ideológico: nenhum. O que permanece bloqueado é conteúdo ilegal, incluindo material envolvendo menores. Fora disso, a resposta é sobre o pedido.

### Quais modelos existem?

Liste com GET https://uncensored-llm.sbs/v1/models. Todo cliente que lê /v1/models descobre os modelos sozinho.

### Dá para usar em produção?

Sim, com chave por ambiente e rotação. Guarde a chave fora do repositório, em variável de ambiente ou cofre.

## Outros idiomas desta documentação

- [es-419] https://brown1023.github.io/api-llm-sin-censura-latam/
- [id-ID] https://ryuuless.github.io/uncensored-llm-api-indonesia/
- [vi-VN] https://ryuuless.github.io/uncensored-llm-api-vietnam/
- [tr-TR] https://askcode24.github.io/sansursuz-llm-api-turkiye/
- [de-DE] https://askcode24.github.io/uncensored-llm-api-deutschland/
- [es-ES] https://palazuel0s2004.github.io/api-llm-sin-censura-espana/
- [it-IT] https://palazuel0s2004.github.io/llm-api-senza-censura-italia/
- [en-IN] https://nirav0712.github.io/uncensored-llm-api-india/
- [en-PH] https://nirav0712.github.io/uncensored-llm-api-philippines/
- [ar] https://mohamedabderrehman.github.io/uncensored-llm-api-arabia/
- [ar-EG] https://mohamedabderrehman.github.io/uncensored-llm-api-egypt/

---

uncensored-llm.sbs — API compatível com OpenAI. Conteúdo ilegal, incluindo qualquer material envolvendo menores, é bloqueado. Todo o resto é responsabilidade de quem chama.