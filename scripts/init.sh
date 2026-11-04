#!/bin/bash
set -e

# Cores para feedback visual no terminal
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}🚀 A inicializar o Agentic Toolkit no projeto atual...${NC}"

# Diretório base onde o script está a ser executado (raiz do projeto alvo)
TARGET_DIR="$(pwd)"

# Como o script está em 'scripts/', assumimos que o toolkit core está na pasta acima ou acessível.
# Se executado a partir do próprio repositório do toolkit:
TOOLKIT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# 1. Criar a estrutura base de diretórios exigida pela governança
echo -e "${GREEN}📁 A criar a estrutura de pastas agênticas...${NC}"
mkdir -p "$TARGET_DIR/.agents/rules"
mkdir -p "$TARGET_DIR/.agents/skills"
mkdir -p "$TARGET_DIR/.agents/prompts"
mkdir -p "$TARGET_DIR/docs/deliveries"
mkdir -p "$TARGET_DIR/docs/backlog"
mkdir -p "$TARGET_DIR/docs/requirements"

# 2. Copiar as regras core e prompts globais do toolkit para o projeto
echo -e "${GREEN}📦 A injetar regras core e prompts...${NC}"
if [ -d "$TOOLKIT_DIR/.agents/rules" ]; then
    cp -r "$TOOLKIT_DIR/.agents/rules/"* "$TARGET_DIR/.agents/rules/" 2>/dev/null || true
fi

if [ -d "$TOOLKIT_DIR/.agents/prompts" ]; then
    cp -r "$TOOLKIT_DIR/.agents/prompts/"* "$TARGET_DIR/.agents/prompts/" 2>/dev/null || true
fi

# 3. Copiar as skills principais globais
if [ -d "$TOOLKIT_DIR/.agents/skills" ]; then
    cp -r "$TOOLKIT_DIR/.agents/skills/"* "$TARGET_DIR/.agents/skills/" 2>/dev/null || true
fi

# 4. Criar o AGENTS.md raiz se ele não existir no projeto alvo
if [ ! -f "$TARGET_DIR/AGENTS.md" ]; then
    echo -e "${GREEN}📄 A criar o AGENTS.md mestre na raiz...${NC}"
    if [ -f "$TOOLKIT_DIR/AGENTS.md" ]; then
        cp "$TOOLKIT_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
    else
        touch "$TARGET_DIR/AGENTS.md"
    fi
fi

# 5. Menu interativo para instalação opcional de Packs específicos
echo -e "\n${CYAN}🧩 Deseja instalar quais packs opcionais de stack neste projeto?${NC}"
packs=("spring-boot-expert" "refactor-react" "seo-optimizer" "unslop-ai" "humanize-frontend")

for pack in "${packs[@]}"; do
    if [ -d "$TOOLKIT_DIR/packs/$pack" ]; then
        read -p "Deseja instalar o pack [$pack]? (y/N) " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            mkdir -p "$TARGET_DIR/.agents/skills/$pack"
            cp -r "$TOOLKIT_DIR/packs/$pack/"* "$TARGET_DIR/.agents/skills/$pack/"
            echo -e "✅ Pack ${GREEN}$pack${NC} instalado com sucesso em .agents/skills/$pack!"
        fi
    fi
done

echo -e "\n${CYAN}✨ Projeto inicializado com sucesso sob o padrão AGENTS.md! 🚀${NC}"