# Configurações da Plataforma

## Paralelismo de Agentes

Define quantos agentes de cada tipo podem operar em paralelo.
O orquestrador respeita esses limites ao despachar atividades.

| Agente                    | Máximo em paralelo |
|---|---|
| `programador`             | 3 |
| `revisor`                 | 2 |
| `arquiteto`               | 1 |
| `pesquisador`             | 2 |
| `contextualizador`        | 1 |
| `engenheiro-de-dados`     | 1 |
| `engenheiro-de-seguranca` | 1 |
| `sre`                     | 1 |

## Comportamento de despacho

- Atividades sem `Depende de` declarado são candidatas a despacho em paralelo
- Atividades com dependência aguardam a predecessora ter status `concluída`
- O orquestrador não excede os limites acima mesmo que haja atividades pendentes disponíveis
- Se o limite for `1`, o agente trabalha sequencialmente entre atividades

## Como personalizar

Edite os valores da coluna "Máximo em paralelo" conforme a capacidade e o contexto do projeto.
Valores maiores aumentam o throughput mas podem gerar conflitos em recursos compartilhados.
