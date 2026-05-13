# 1000millones

## LLM Council

Este proyecto usa [llm-council](https://github.com/simonw/llm-council) (v0.1.3), un plugin para [LLM](https://llm.datasette.io/) que permite consultar múltiples modelos de lenguaje en paralelo y sintetizar sus respuestas.

### Instalación

```bash
pip install llm-council
```

### Uso básico

```bash
llm council "¿Cuál es la mejor estrategia para escalar a 1000 millones de usuarios?"
```

### Providers disponibles

Puedes especificar qué modelos participan en el consejo:

```bash
llm council -p anthropic -p openai "Tu pregunta aquí"
```

### Modelos instalados

- OpenAI (GPT-4o, GPT-4.1, o3, o4-mini, etc.)
- Anthropic (Claude 3, Claude via llm-anthropic)
- Google Gemini (via llm-gemini)
