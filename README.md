# Agent Get Starter

Kit de partida para construir uma plataforma de IA personalizável com orquestração de agentes via Claude Code.

## Premissa

Configure comportamentos, agentes e automações em linguagem natural. O Claude Code é o motor de execução — você define as regras.

## Estrutura

```
agent-get-starter/
├── CLAUDE.md                              # Regras e comportamento da plataforma
├── .claude/
│   ├── settings.json                      # Modelo, permissões e hooks
│   ├── agents/                            # Agentes especializados
│   │   ├── orquestrador.md
│   │   ├── contextualizador.md
│   │   ├── pesquisador.md
│   │   ├── arquiteto.md
│   │   ├── programador.md
│   │   ├── revisor.md
│   │   ├── engenheiro-de-dados.md
│   │   ├── engenheiro-de-seguranca.md
│   │   └── sre.md
│   └── skills/
│       ├── contexto.md                    # Esquema dos arquivos .contexto.md
│       ├── executar-fluxo.md              # /executar-fluxo
│       └── status-plataforma.md           # /status-plataforma
├── fluxos/
│   ├── templates/
│   │   └── planejamento.md                # Template de documento de planejamento
│   ├── pesquisa-e-implementacao.md
│   └── pipeline-revisao-codigo.md
├── ganchos/
│   ├── ao-iniciar.sh                      # Placeholder — sem hook nativo de início
│   └── ao-encerrar.sh                     # Executado pelo hook Stop
└── README.md
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

> `contexto.md` não é um slash command — é o esquema que define como os arquivos `.contexto.md` devem ser criados pelo `contextualizador` em cada diretório do projeto.

## Como usar

### 1. Pré-requisitos

- [Claude Code](https://claude.ai/code) instalado (`npm install -g @anthropic-ai/claude-code`)
- Conta Anthropic com acesso à API

### 2. Instalação

```bash
git clone https://github.com/eaojunior/agent-get-starter.git
cd agent-get-starter
claude
```

O Claude Code detecta automaticamente o `CLAUDE.md` e carrega as regras da plataforma. Nenhuma configuração adicional é necessária para começar.

### 3. Interação em linguagem natural

Descreva o que precisa diretamente no chat. O `orquestrador` assume o controle, decompõe a tarefa, identifica os agentes necessários e coordena a execução.

**Exemplos de prompts:**

```
Preciso implementar autenticação JWT na API de usuários
```
→ O orquestrador aciona: `contextualizador` → `arquiteto` → `engenheiro-de-seguranca` → `programador` → `revisor`

```
Revisa o PR #42 antes do merge
```
→ O orquestrador aciona: `contextualizador` → `arquiteto` → `revisor` → `engenheiro-de-seguranca` → `sre`

```
Qual a melhor abordagem para migrar de REST para GraphQL nesse projeto?
```
→ O orquestrador aciona: `contextualizador` → `pesquisador` → `arquiteto`

```
Cria um pipeline de ingestão de dados do S3 para o Redshift com validação de qualidade
```
→ O orquestrador aciona: `contextualizador` → `arquiteto` → `engenheiro-de-dados` → `engenheiro-de-seguranca` → `programador` → `revisor`

### 4. Executar um fluxo pré-definido

Fluxos encapsulam sequências comuns de agentes com inputs e outputs padronizados.

```
/executar-fluxo
```

A skill lista os fluxos disponíveis e guia a execução. Para acionar diretamente:

```
/executar-fluxo pesquisa-e-implementacao
```

**Fluxos disponíveis:**

| Fluxo | Quando usar |
|---|---|
| `pesquisa-e-implementacao` | Nova funcionalidade que exige pesquisa + implementação completa com revisão |
| `pipeline-revisao-codigo` | Revisão de PR com múltiplas perspectivas: qualidade, segurança e confiabilidade |

### 5. Ver o estado da plataforma

```
/status-plataforma
```

Exibe todos os agentes, skills, fluxos disponíveis e a configuração ativa.

### 6. Arquivos `.contexto.md`

O `contextualizador` cria automaticamente um arquivo `.contexto.md` em cada diretório percorrido. Esses arquivos:

- Respondem à pergunta "o que está aqui" para qualquer agente ou desenvolvedor
- Reduzem o uso de tokens em sessões futuras — agentes leem o `.contexto.md` antes de ler todos os arquivos do diretório
- São atualizados no mesmo commit que a mudança que os tornou necessários

Exemplo de `.contexto.md` gerado:

```markdown
<context path="src/auth" updated="2026-03-25">

Módulo de autenticação. Implementa JWT com refresh token e middleware de autorização por role.

## Sumário

- index.ts — exporta os handlers públicos do módulo
- jwt.service.ts — geração, validação e renovação de tokens
- auth.middleware.ts — middleware Express para rotas protegidas
- roles.guard.ts — guard de autorização por role (admin, user, readonly)

## Restrições

- NÃO armazene secrets aqui — use variáveis de ambiente via `process.env`
- DEVE validar o token em toda requisição autenticada, sem cache local

</context>
```

---

## Como personalizar

### Modificar o comportamento da plataforma

Edite o `CLAUDE.md`. É o arquivo central — define tom, idioma, regras e quais agentes estão disponíveis. Toda sessão carrega esse arquivo automaticamente.

### Adicionar um agente

1. Crie `.claude/agents/<nome>.md`:

```markdown
---
name: Nome do Agente
description: Quando acionar este agente — usado pelo orquestrador para decidir a delegação
tools:
  - Read
  - Write
  - Bash
---

## Como agir

1. Passo 1
2. Passo 2

## O que você entrega

- Item 1
- Item 2

## Regras

- Regra 1
- Regra 2
```

2. Adicione o agente à tabela em `CLAUDE.md`.

> O campo `description` é o mais importante — é o que o orquestrador lê para decidir quando acionar o agente. Seja específico sobre o contexto de uso.

### Adicionar um fluxo

Crie `fluxos/<nome>.md` com a estrutura:

```markdown
# Fluxo: [Nome]

[Descrição]

## Quando usar

[Condição objetiva de uso]

## Agentes envolvidos

> Fluxo coordenado pelo `orquestrador`.

1. `agente-1` — o que faz neste fluxo
2. `agente-2` — o que faz neste fluxo

## Inputs esperados

- Input 1
- Input 2

## Output esperado

- Output 1
- Output 2
```

### Configurar permissões e hooks

Edite `.claude/settings.json`.

**Permissões:** controlam quais comandos Bash os agentes podem executar sem confirmação manual.

```json
"permissions": {
  "allow": ["Bash(npm:*)", "Bash(git:*)"],
  "deny": ["Bash(rm:*)"]
}
```

**Hooks:** o evento `Stop` é disparado ao final de cada resposta do agente.

```json
"hooks": {
  "Stop": [{ "matcher": "", "hooks": [{ "type": "command", "command": "bash ganchos/ao-encerrar.sh" }] }]
}
```

> Não há hook nativo de início de sessão no Claude Code. O script `ganchos/ao-iniciar.sh` existe como placeholder para uso manual.
