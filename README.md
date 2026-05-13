# 1000millones

## LLM Council

Consulta múltiples inteligencias artificiales a la vez y compara sus respuestas en paralelo. La gracia es que modelos de distintas empresas tienen distintos sesgos y entrenamientos — si todos coinciden, hay más confianza; si discrepan, ves los matices.

### Proveedores configurados

| Proveedor | Modelo | Empresa | Coste |
|-----------|--------|---------|-------|
| `anthropic` | claude-haiku-4.5 | Anthropic (USA) | De pago |
| `google` | gemini-2.5-flash | Google (USA) | Gratis |
| `groq` | llama-3.3-70b | Meta vía Groq | Gratis |
| `deepseek` | deepseek-chat | DeepSeek (China) | Casi gratis |

### Instalación en tu máquina

```bash
./setup.sh
```

El script instala todo y te pide las API keys una a una.

### Uso

```bash
# Council completo (4 modelos)
llm council -p anthropic -p google -p groq -p deepseek "Tu pregunta"

# Solo dos proveedores
llm council -p anthropic -p google "Tu pregunta"

# Con prompt de sistema personalizado
llm council -p anthropic -p google -s "Eres un experto en marketing" "Tu pregunta"
```

Navega entre paneles con `TAB`, sal con `Q`.

### API Keys necesarias

- **Anthropic**: https://console.anthropic.com/settings/keys
- **Gemini**: https://aistudio.google.com/app/apikey (gratis con Google)
- **Groq**: https://console.groq.com (gratis, sin tarjeta)
- **DeepSeek**: https://platform.deepseek.com (casi gratis)
