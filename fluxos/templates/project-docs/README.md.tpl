# [Nome do Projeto]

[Uma frase descrevendo o que o projeto faz e para quem.]

---

## Visão geral

[2–3 parágrafos descrevendo o projeto: o problema que resolve, como funciona em alto nível e o que o torna diferente.]

---

## Estrutura

```
.
├── CLAUDE.md                    # Regras e comportamento da plataforma
├── .claude/
│   ├── settings.json            # Modelo, permissões e hooks
│   ├── agents/                  # Agentes especializados
│   └── skills/                  # Skills disponíveis
├── fluxos/
│   ├── templates/               # Templates usados pelos agentes
│   └── *.md                     # Fluxos pré-definidos
├── ganchos/                     # Scripts de hook (ao-iniciar, ao-encerrar)
├── CHANGELOG.md                 # Histórico de mudanças
└── CONTRIBUTING.md              # Guia de contribuição
```

---

## Pré-requisitos

- [Claude Code](https://claude.ai/code) (`npm install -g @anthropic-ai/claude-code`)
- Conta Anthropic com acesso à API
- Github CLI

---

## Como usar

```bash
git clone <url-do-repositorio>
cd <nome-do-projeto>
claude
```

O Claude Code detecta automaticamente o `CLAUDE.md` e carrega as regras da plataforma.

---

## Agentes disponíveis

| Agente | Responsabilidade |
|---|---|
| `orquestrador` | Coordena todos os agentes, decompõe tarefas e sintetiza resultados |
| `contextualizador` | Mapeia o estado atual do projeto antes de qualquer implementação |
| `pesquisador` | Busca informações externas — documentação, exemplos, alternativas |
| `arquiteto` | Define estrutura técnica, decisões de design e ADRs |
| `programador` | Implementa código conforme as especificações |
| `revisor` | Revisa qualidade, correção e boas práticas |
| `engenheiro-de-dados` | Pipelines, modelagem e governança de dados |
| `engenheiro-de-seguranca` | Vulnerabilidades, compliance e hardening |
| `sre` | Confiabilidade, observabilidade, SLOs e incidentes |

---

## Skills disponíveis

| Skill | O que faz |
|---|---|
| `/executar-fluxo` | Executa um fluxo multi-agente pré-definido |
| `/status-plataforma` | Exibe visão geral de agentes, skills e configuração |

---

## Como personalizar

1. Edite `CLAUDE.md` para ajustar regras, idioma e tom
2. Adicione ou remova agentes em `.claude/agents/`
3. Configure permissões e hooks em `.claude/settings.json`
4. Crie novos fluxos em `fluxos/`

---

## Contribuição

Veja [CONTRIBUTING.md](./CONTRIBUTING.md).

## Changelog

Veja [CHANGELOG.md](./CHANGELOG.md).