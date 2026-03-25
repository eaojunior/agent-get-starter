# Fluxo: Pipeline de Revisão de Código

Revisa código com múltiplas perspectivas especializadas.

## Quando usar

Quando um PR ou conjunto de mudanças precisa de revisão completa — qualidade, segurança e confiabilidade.

## Agentes envolvidos

> Fluxo coordenado pelo `orquestrador`.

1. `contextualizador` — entende o escopo das mudanças
2. `arquiteto` — avalia impacto estrutural e decisões de design
3. `revisor` — qualidade, correção e boas práticas
4. `engenheiro-de-seguranca` — vulnerabilidades e compliance
5. `sre` — impacto em confiabilidade e observabilidade

## Inputs esperados

- Arquivos alterados ou número do PR
- Contexto da mudança (o que foi feito e por quê)

## Output esperado

- Relatório consolidado pelo `orquestrador` com problemas por severidade
- Veredito por agente: `aprovado`, `aprovado com ressalvas` ou `bloqueado`
- Lista de ações corretivas priorizadas
