# Guia de Contribuição

Obrigado por contribuir com este projeto. Este guia descreve o processo para reportar problemas, propor melhorias e enviar código.

---

## Pré-requisitos

- [Claude Code](https://claude.ai/code) instalado (`npm install -g @anthropic-ai/claude-code`)
- Conta Anthropic com acesso à API
- Git configurado localmente

---

## Como reportar um problema

1. Verifique se o problema já foi reportado nas [issues abertas](../../issues)
2. Se não, abra uma nova issue com:
   - Descrição clara do problema
   - Passos para reproduzir
   - Comportamento esperado vs. observado
   - Versão do Claude Code e sistema operacional

---

## Como propor uma melhoria

1. Abra uma issue descrevendo a melhoria antes de implementá-la
2. Aguarde feedback antes de começar a codificar
3. Para melhorias pequenas (typo, formatação), um PR direto é suficiente

---

## Fluxo de contribuição

### 1. Criar o branch

Use o padrão Conventional Branch:

```bash
git checkout -b feature/issue-123-short-description
```

Prefixos válidos: `feature/`, `bugfix/`, `hotfix/`, `improvement/`

### 2. Fazer commits incrementais

Use o padrão [Conventional Commits](https://www.conventionalcommits.org/):

```
<tipo>[escopo opcional]: <descrição>
```

Tipos válidos: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`, `ci`, `perf`, `build`

Exemplos:
```
feat(agents): add CHANGELOG management to orchestrator
fix(templates): correct placeholder in README template
docs: update contributing guide with new agents
```

### 3. Push e Pull Request

```bash
git push origin feature/issue-123-short-description
gh pr create --title "feat: short description" --body-file /tmp/pr-body.md
```

O título do PR deve seguir o padrão Conventional Commits.

---

## Estrutura do projeto

```
.
├── CLAUDE.md                    # Regras e comportamento da plataforma
├── .claude/
│   ├── settings.json            # Modelo, permissões e hooks
│   ├── agents/                  # Definições dos agentes
│   └── skills/                  # Skills disponíveis
├── fluxos/
│   ├── templates/               # Templates usados pelos agentes
│   └── *.md                     # Fluxos pré-definidos
└── ganchos/                     # Scripts de hook
```

---

## Convenções

- **Idioma:** diálogo em português brasileiro; código, commits, branches e nomes técnicos em inglês
- **Agentes:** cada agente tem um arquivo `.md` em `.claude/agents/` — edite apenas o agente relevante
- **Templates:** ficam em `fluxos/templates/` — use como base, não modifique diretamente
- **Sem comentários desnecessários:** comente apenas lógica genuinamente não óbvia

---

## Dúvidas

Abra uma issue com a tag `question`.
