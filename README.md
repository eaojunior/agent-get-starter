# Agent Get Starter

Kit de partida para construir uma plataforma de IA personalizável com orquestração de agentes via Claude Code.

## Premissa

Configure comportamentos, agentes e automações em linguagem natural. O Claude Code é o motor de execução — você define as regras.

## Estrutura

```
agent-get-starter/
├── CLAUDE.md                        # Regras e comportamento da plataforma
├── .claude/
│   ├── settings.json                # Modelo, permissões e hooks
│   ├── agents/                      # Agentes especializados
│   │   ├── orquestrador.md
│   │   ├── contextualizador.md
│   │   ├── pesquisador.md
│   │   ├── arquiteto.md
│   │   ├── programador.md
│   │   ├── revisor.md
│   │   ├── engenheiro-de-dados.md
│   │   ├── engenheiro-de-seguranca.md
│   │   └── sre.md
│   └── skills/                      # Slash commands customizados
│       ├── executar-fluxo.md        # /executar-fluxo
│       └── status-plataforma.md     # /status-plataforma
├── fluxos/                          # Fluxos multi-agente pré-definidos
│   ├── pesquisa-e-implementacao.md
│   └── pipeline-revisao-codigo.md
└── ganchos/                         # Scripts executados pelos hooks
    ├── ao-iniciar.sh
    └── ao-encerrar.sh
```

## Agentes

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

## Skills

| Skill | O que faz |
|---|---|
| `/executar-fluxo` | Executa um fluxo multi-agente pré-definido da pasta `fluxos/` |
| `/status-plataforma` | Exibe visão geral de agentes, skills, fluxos e configuração |

## Como usar

### 1. Clone e abra no Claude Code

```bash
git clone <repo>
cd agent-get-starter
claude
```

### 2. Descreva o que precisa em linguagem natural

O orquestrador assume o controle, decompõe a tarefa e aciona os agentes certos automaticamente.

### 3. Execute um fluxo pré-definido

```
/executar-fluxo
```

## Como personalizar

### Adicionar um agente

Crie um arquivo em `.claude/agents/<nome>.md` com este formato:

```markdown
---
name: Nome do Agente
description: Quando acionar este agente (usado pelo orquestrador)
tools:
  - Read
  - Write
  - Bash
---

Instruções do agente...
```

Adicione o agente à tabela de agentes no `CLAUDE.md`.

### Adicionar um fluxo

Crie um arquivo em `fluxos/<nome>.md` descrevendo os agentes envolvidos, ordem e inputs/outputs esperados.

### Modificar o comportamento da plataforma

Edite o `CLAUDE.md` — é o arquivo central que define tom, regras e como a plataforma deve se comportar.

### Configurar permissões e hooks

Edite `.claude/settings.json`.

## Requisitos

- [Claude Code](https://claude.ai/code) instalado
- Conta Anthropic com acesso à API
