# Lista de Atividades

Criada em: YYYY-MM-DD HH:ii:ss
Finalizada em: YYYY-MM-DD HH:ii:ss
Tarefa: [Descrição geral da tarefa solicitada pelo usuário]

---

## Atividade 1: [Título]

**Contexto:** O que esta atividade resolve e por quê é necessária.
**Esperado:**
- Entregável 1
- Entregável 2

**Agentes:** programador, revisor
**Depende de:** — *(ou: "Atividade N")*
**Status:** `pendente`

### Checklist

- [ ] `programador` — implementação concluída, formatter e linter executados
- [ ] `revisor` — qualidade e boas práticas validadas

---

## Atividade 2: [Título]

**Contexto:** O que esta atividade resolve e por quê é necessária.
**Esperado:**
- Entregável 1

**Agentes:** engenheiro-de-dados, engenheiro-de-seguranca, sre
**Depende de:** — *(ou: "Atividade N")*
**Status:** `pendente`

### Checklist

- [ ] `engenheiro-de-dados` — impacto em schemas e pipelines avaliado
- [ ] `engenheiro-de-seguranca` — vulnerabilidades e compliance verificados
- [ ] `sre` — impacto em confiabilidade e observabilidade avaliado

---

## Regras

- Status válidos: `pendente` | `em andamento` | `concluída`
- Cada atividade deve ser autocontida: contexto, esperado, agentes e checklist próprios
- O orquestrador marca status `em andamento` ao despachar os agentes da atividade
- Cada agente marca seu item no checklist ao concluir seu trabalho
- O orquestrador marca status `concluída` quando todos os itens do checklist estiverem `[x]`
- Atividades sem `Depende de` declarado são candidatas a despacho em paralelo