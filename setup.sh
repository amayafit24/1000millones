#!/bin/bash
# Setup LLM Council con todos los proveedores

echo "Instalando LLM y plugins..."
pip install llm llm-council llm-anthropic llm-gemini llm-groq llm-deepseek

echo ""
echo "Actualizando plugin llm-council con modelos actuales..."
COUNCIL_FILE=$(python3 -c "import llm_council, inspect, os; print(inspect.getfile(llm_council))")
python3 - <<'PYEOF'
import re, pathlib, sys

path = pathlib.Path(sys.argv[1]) if len(sys.argv) > 1 else None
import llm_council, inspect
path = pathlib.Path(inspect.getfile(llm_council))

content = path.read_text()
old = '''"openai": {"model": "gpt-4o", "style": "class:frame.border.blue"},
    "anthropic": {"model": "claude-3.5-sonnet", "style": "class:frame.border.red"},
    "google": {"model": "gemini-1.5-flash-latest", "style": "class:frame.border.yellow"},'''
new = '''"openai": {"model": "gpt-4o", "style": "class:frame.border.blue"},
    "anthropic": {"model": "claude-haiku-4.5", "style": "class:frame.border.red"},
    "google": {"model": "gemini-2.5-flash", "style": "class:frame.border.yellow"},
    "groq": {"model": "groq/llama-3.3-70b-versatile", "style": "class:frame.border.green"},
    "deepseek": {"model": "deepseek-chat", "style": "class:frame.border.magenta"},'''
if old in content:
    path.write_text(content.replace(old, new))
    print("Plugin actualizado correctamente")
else:
    print("El plugin ya estaba actualizado o tiene un formato diferente")
PYEOF

echo ""
echo "Configurando API keys..."
echo "Pega cada key cuando se te pida:"
echo ""
llm keys set anthropic
llm keys set gemini
llm keys set groq
llm keys set deepseek

echo ""
echo "¡Todo listo! Prueba el council con:"
echo ""
echo "  llm council -p anthropic -p google -p groq -p deepseek \"Tu pregunta aquí\""
echo ""
echo "Navega entre paneles con TAB, sal con Q"
