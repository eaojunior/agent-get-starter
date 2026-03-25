Execute um fluxo multi-agente pré-definido.

Siga os passos abaixo:

1. Liste os fluxos disponíveis na pasta `fluxos/` e exiba os nomes para o usuário
2. Pergunte qual fluxo executar (ou aceite o nome como argumento)
3. Leia o arquivo do fluxo escolhido em `fluxos/<nome>.md`
4. Identifique os agentes envolvidos e a ordem de execução
5. Acione o `orquestrador` passando:
   - O objetivo do fluxo
   - Os agentes que devem ser usados
   - Os inputs fornecidos pelo usuário
6. Mantenha o usuário informado do progresso a cada etapa concluída
