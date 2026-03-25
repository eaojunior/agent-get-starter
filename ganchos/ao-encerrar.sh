#!/bin/bash
# Executado ao encerrar uma sessão do Claude Code

echo "Plataforma encerrada em: $(date '+%Y-%m-%d %H:%M:%S')" >> .claude/sessoes.log
