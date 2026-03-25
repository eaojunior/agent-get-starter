# Fluxo: Pesquisa e Implementação

Pesquisa uma solução externamente e implementa no projeto com revisão completa.

## Quando usar

Quando a tarefa exige buscar referências ou documentação antes de implementar, com validação de segurança e confiabilidade antes de concluir.

## Agentes envolvidos

> Fluxo coordenado pelo `orquestrador`.

1. `contextualizador` — mapeia o estado atual do projeto e entrega o contexto para os demais agentes
2. `pesquisador` — busca documentação, exemplos e alternativas externas
3. `arquiteto` — define a abordagem com base no contexto e na pesquisa
4. `engenheiro-de-dados` — avalia impacto em dados: schemas, pipelines ou contratos afetados (acionar se houver mudança em camada de dados)
5. `engenheiro-de-seguranca` — analisa riscos de segurança da abordagem proposta antes da implementação
6. `programador` — implementa a solução conforme a arquitetura definida
7. `revisor` — valida qualidade, correção e boas práticas do código entregue
8. `sre` — avalia impacto em confiabilidade, observabilidade e necessidade de alertas ou runbooks

## Inputs esperados

- Descrição do problema ou funcionalidade a implementar
- Tecnologias ou restrições relevantes (opcional)

## Output esperado

- Código implementado e revisado
- Referências consultadas pelo pesquisador
- Decisões técnicas documentadas pelo arquiteto
- Relatório de segurança e confiabilidade
