#!/usr/bin/env bash
# API de LLM sem censura para desenvolvedores no Brasil — quickstart
set -euo pipefail
: "${UNLLM_KEY:?export UNLLM_KEY=sk-...}"

curl -s https://uncensored-llm.sbs/v1/chat/completions \
  -H "Authorization: Bearer $UNLLM_KEY" \
  -H "Content-Type: application/json" \
  -d '{"model":"uncensored-llm","messages":[{"role":"user","content":"Explique, sem rodeios, como funciona capitalização de mercado de cripto."}]}' | head -c 2000
echo
