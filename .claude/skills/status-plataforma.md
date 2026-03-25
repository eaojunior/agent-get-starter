Exiba a visão geral da plataforma.

Faça o seguinte:

1. Leia todos os arquivos em `.claude/agents/` e extraia: nome, descrição e tools de cada agente
2. Leia todos os arquivos em `.claude/skills/` e extraia o nome de cada skill
3. Leia os arquivos em `fluxos/` e liste os fluxos disponíveis
4. Leia o `.claude/settings.json` e exiba: modelo configurado, permissões e hooks ativos

Exiba o resultado neste formato:

---
## Status da Plataforma

### Agentes disponíveis (N)
| Agente | Descrição |
|---|---|
| ... | ... |

### Skills disponíveis (N)
- `/executar-fluxo` — ...
- `/status-plataforma` — esta skill

### Fluxos disponíveis (N)
- ...

### Configuração
- **Modelo:** ...
- **Hooks ativos:** ...
- **Permissões:** ...
---