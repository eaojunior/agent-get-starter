## ADR-001: Gerenciamento automático de CHANGELOG, CONTRIBUTING e README

**Status:** Aceita

**Contexto:** A plataforma não possuía mecanismo para garantir que repositórios que a usam mantenham documentação essencial (`CHANGELOG.md`, `CONTRIBUTING.md`, `README.md`). O CHANGELOG em particular precisa ser atualizado de forma rastreável conforme atividades são adicionadas e concluídas.

**Decisão:**

1. Templates dos três arquivos ficam em `fluxos/templates/project-docs/` — consistente com os demais templates da plataforma.

2. Cada arquivo tem um agente responsável pela verificação e criação:
   - `CHANGELOG.md` → `orquestrador` (único agente que gerencia o ciclo de vida das atividades)
   - `README.md` → `arquiteto` (documento de estrutura e visão geral do projeto)
   - `CONTRIBUTING.md` → `arquiteto` (documento de processo e convenções)

3. O `programador` também atualiza `CHANGELOG.md` ao concluir implementações — visto que ele é o agente que produz as mudanças concretas.

4. Nenhum novo agente ou skill é criado — as responsabilidades são inseridas nos agentes existentes via instrução em seus arquivos `.md`.

5. O rastreamento CHANGELOG↔atividades é feito por instrução textual nos agentes, não por automação de script — mantém a abordagem declarativa da plataforma.

**Consequências:**

Positivo:
- Repositórios que usam a plataforma passam a ter documentação mínima garantida
- O CHANGELOG reflete as atividades executadas de forma rastreável
- Sem novos componentes de infraestrutura — apenas instruções em agentes existentes

Negativo:
- Agentes precisam lembrar de verificar/atualizar — depende de instrução clara nos `.md`
- Sem validação automática de que o CHANGELOG foi atualizado (não há hook de lint)
- Se um agente for acionado diretamente (sem o orquestrador), pode não executar a verificação
