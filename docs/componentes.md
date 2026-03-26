# Componentes — Gerenciamento Automático de Documentos do Projeto

## Templates

### `fluxos/templates/project-docs/CHANGELOG.md.tpl`

Template base para `CHANGELOG.md`. Segue o formato [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/) com versionamento semântico.

**Seções:** `[Unreleased]`, `Added`, `Changed`, `Fixed`, `Removed`, `Deprecated`, `Security`

### `fluxos/templates/project-docs/CONTRIBUTING.md.tpl`

Template base para `CONTRIBUTING.md`. Cobre:
- Pré-requisitos de ambiente
- Fluxo de contribuição (branch → commits → PR)
- Convenções de código e commit
- Como executar testes e lint

### `fluxos/templates/project-docs/README.md.tpl`

Template base para `README.md`. Cobre:
- Visão geral do projeto
- Estrutura de diretórios
- Como instalar e usar
- Agentes e skills disponíveis
- Como personalizar

---

## Agentes modificados

### `orquestrador` (modificado)

Novas responsabilidades adicionadas:

1. **Verificação de CHANGELOG.md no início da sessão:**
   - Se `CHANGELOG.md` não existir: copia `fluxos/templates/project-docs/CHANGELOG.md.tpl`

2. **Atualização de CHANGELOG ao gerenciar atividades:**
   - Ao adicionar atividade: adiciona entrada em `[Unreleased]`
   - Ao marcar atividade como `concluída`: move/confirma entrada com data

### `arquiteto` (modificado)

Novas responsabilidades adicionadas:

1. **Verificação de README.md e CONTRIBUTING.md no início do trabalho:**
   - Se `README.md` não existir: copia `fluxos/templates/project-docs/README.md.tpl`
   - Se `CONTRIBUTING.md` não existir: copia `fluxos/templates/project-docs/CONTRIBUTING.md.tpl`

### `programador` (modificado)

Nova responsabilidade adicionada:

1. **Atualização de CHANGELOG ao concluir implementação:**
   - Se `CHANGELOG.md` existir: adiciona entrada na seção adequada (`Added`, `Changed`, `Fixed`)
   - Descreve o que foi implementado em uma linha concisa

---

## Restrições

- Templates são somente leitura — agentes nunca os modificam após a criação inicial
- `CHANGELOG.md` nunca é sobrescrito — apenas atualizado incrementalmente
- `README.md` e `CONTRIBUTING.md` são criados apenas se ausentes — nunca sobrescritos por agentes
