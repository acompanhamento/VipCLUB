@echo off
cd /d "%~dp0"

echo ==============================
echo   ATUALIZANDO SITE DE TESTE
echo ==============================
echo.

git add .

git commit -m "Atualizacao do site de teste"

git push origin main

echo.
echo ==============================
echo   ATUALIZACAO CONCLUIDA
echo ==============================
pause