---
shortDescription: Como manter os arquivos .contexto.md do projeto.
usedBy: [programador, contextualizador]
version: 0.1.0
lastUpdated: 2026-03-25
---

## Propósito

Cada diretório em um projeto possui um arquivo `.contexto.md` que orienta qualquer pessoa que chegue em seguida — seja um humano ou um agente. Esses arquivos respondem à pergunta "o que está aqui", permitindo que agentes e desenvolvedores naveguem pelo código-fonte sem precisar ler todos os arquivos. Essa habilidade define quando e como mantê-los atualizados à medida que o projeto evolui, e o esquema que devem seguir.

## Procedimento

1. **Escopo.** Prefira a verificação a partir de `src/` como raiz. Ignore diretórios ocultos/pontilhados (`.vscode`, `.claude`, `.git`, `.github`, etc.) e diretórios gerados, incluídos em pacotes ou efêmeros (`node_modules`, `dist`, `.cache`, `__pycache__`, `vendor`).

2. **Determine se é necessário atualizar.** Uma atualização do arquivo `.contexto.md` é necessária quando uma alteração modifica a finalidade de um diretório, adiciona ou remove arquivos/dependências ou altera as convenções de nomenclatura. Correções de bugs, formatação e refatorações que preservam a estrutura não exigem atualizações.

3. **Escreva ou atualize o arquivo `.contexto.md` dentro do diretório afetado, seguindo o esquema abaixo.**

4. **Commit junto.** O `.contexto.md` deve ser atualizado no mesmo commit que a alteração que o tornou necessário. Nunca separe a atualização do `.contexto.md` de sua alteração.

## Esquema

```markdown
<context path="relative/path" updated="YYYY-MM-DD">

Uma ou duas frases descrevendo o que este diretório contém e por que ele existe.

## Sumário

- filename.ext — breve descrição do que o arquivo faz
- filename.ext — breve descrição do que o arquivo faz
- subdirectory/ — breve descrição do que o subdiretório contém

## Restrições

- Declarações "DEVE" / "NÃO DEVE". Restrições não negociáveis ​​específicas para este diretório.

## Orientações

- Declarações "DEVE" / "NÃO DEVE". Recomendações que podem ser contrárias, mediante justificativa.

</context>
```

**Notas do esquema:**

- Restrições e orientações são opcionais — inclua-as apenas quando o diretório tiver regras que valham a pena mencionar.
- Seja breve. Este arquivo será lido frequentemente por vários agentes.

## Guardrails

- Nunca invente uma finalidade. Se a função de um diretório não estiver clara após a leitura do seu conteúdo, indique isso.
- Se uma restrição parecer que deve ser aplicada a todo o projeto, em vez de apenas a este diretório, sinalize para o usuário, mas não modifique o diretório `.claude/agents/`. Esse diretório é gerenciado via Git.
- Nunca atualize a data de atualização em uma tag `<context>` de um arquivo `.contexto.md`, a menos que o conteúdo desse arquivo tenha sido alterado. Alterar a data sem uma mudança de conteúdo cria sinais de deriva falsos.
