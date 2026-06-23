@echo off
chcp 65001 >nul
title Criar EXE do Odysseus
cd /d "%~dp0"

echo ===============================================
echo      CRIADOR DO EXECUTAVEL WINDOWS
echo ===============================================
echo.
echo Este processo vai instalar as dependencias e gerar:
echo dist\Odysseus\Odysseus.exe
echo.
echo Pode demorar bastante na primeira vez.
echo.
pause

powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0build-windows-portable.ps1"

if errorlevel 1 (
    echo.
    echo Ocorreu um erro ao criar o executavel.
    echo Tire print da tela e me envie para eu corrigir.
    pause
    exit /b 1
)

echo.
echo ===============================================
echo EXECUTAVEL CRIADO COM SUCESSO!
echo Abra: dist\Odysseus\Odysseus.exe
echo ===============================================
echo.
pause
