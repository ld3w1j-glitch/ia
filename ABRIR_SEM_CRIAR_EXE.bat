@echo off
chcp 65001 >nul
title Abrir Odysseus sem EXE
cd /d "%~dp0"

echo ===============================================
echo      ABRIR ODYSSEUS PELO PYTHON
echo ===============================================
echo.
echo Este modo nao cria EXE. Ele instala e abre direto.
echo Acesse depois: http://127.0.0.1:7000
echo.
pause

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0launch-windows.ps1"

pause
