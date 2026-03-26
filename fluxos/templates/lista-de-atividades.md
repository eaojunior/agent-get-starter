# Lista de Atividades

Criada em: YYYY-MM-DD
Tarefa: [Descrição geral da tarefa solicitada pelo usuário]

---

## Fase 1 — Análise pré-implementação

> Todas as atividades desta fase devem estar `concluída` antes de iniciar a Fase 2.
> Atividades dentro desta fase sem dependências entre si podem rodar em paralelo.

### Atividade 1.1: [Título]

**Contexto:** O que esta atividade resolve e por quê é necessária antes da implementação.
**Esperado:**
- Entregável 1 (ex: modelo de dados com campos, tipos e indexes definidos)
- Entregável 2 (ex: contrato de dados para o programador)

**Agentes:** engenheiro-de-dados
**Status:** `pendente`

#### Checklist

- [ ] `engenheiro-de-dados` — modelo de dados definido, contrato documentado

---

### Atividade 1.2: [Título]

**Contexto:** Riscos de segurança identificados na arquitetura proposta.
**Esperado:**
- Relatório de riscos classificados por severidade
- Recomendações para o programador seguir na implementação

**Agentes:** engenheiro-de-seguranca
**Status:** `pendente`

#### Checklist

- [ ] `engenheiro-de-seguranca` — riscos arquiteturais avaliados, recomendações documentadas

---

## Fase 2 — Implementação

> Inicia somente após todas as atividades da Fase 1 estarem `concluída`.
> Atividades dentro desta fase sem dependências entre si podem rodar em paralelo.

### Atividade 2.1: [Título]

**Contexto:** O que implementar, considerando os entregáveis da Fase 1.
**Esperado:**
- Entregável 1
- Entregável 2

**Agentes:** programador
**Status:** `pendente`

#### Checklist

- [ ] `programador` — implementação concluída, formatter e linter executados

---

## Fase 3 — Validação pós-implementação

> Inicia somente após todas as atividades da Fase 2 estarem `concluída`.
> Atividades dentro desta fase sem dependências entre si podem rodar em paralelo.

### Atividade 3.1: [Título]

**Contexto:** Revisão de segurança da implementação entregue.
**Esperado:**
- Veredito: aprovado | aprovado com ressalvas | bloqueado
- Lista de problemas por severidade

**Agentes:** engenheiro-de-seguranca, revisor
**Status:** `pendente`

#### Checklist

- [ ] `engenheiro-de-seguranca` — implementação revisada quanto a vulnerabilidades
- [ ] `revisor` — qualidade e boas práticas validadas

---

### Atividade 3.2: [Título]

**Contexto:** Avaliação de confiabilidade, pontos de falha e observabilidade.
**Esperado:**
- Impacto em SLOs avaliado
- Gaps de observabilidade identificados
- Runbook criado se necessário

**Agentes:** sre
**Status:** `pendente`

#### Checklist

- [ ] `sre` — confiabilidade e observabilidade avaliadas

---

## Regras

- Status válidos: `pendente` | `em andamento` | `concluída`
- O arquiteto cria este arquivo ao final da fase de design, com todas as atividades já decompostas
- O orquestrador executa as fases em ordem: Fase 1 → Fase 2 → Fase 3
- Atividades dentro de uma mesma fase sem dependência entre si podem ser despachadas em paralelo
- O orquestrador marca status `em andamento` ao despachar os agentes da atividade
- Cada agente marca seu item no checklist ao concluir seu trabalho
- O orquestrador marca status `concluída` quando todos os itens do checklist estiverem `[x]`
- A Fase 2 só inicia quando todas as atividades da Fase 1 estiverem `concluída`
- A Fase 3 só inicia quando todas as atividades da Fase 2 estiverem `concluída`
