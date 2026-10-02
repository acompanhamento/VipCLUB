@echo off
cd /d "%~dp0"

echo =====================================
echo   SINCRONIZACAO AUTOMATICA GITHUB
echo =====================================

:inicio
git add .

git diff --cached --quiet

if %errorlevel%==0 (
    timeout /t 5 /nobreak >nul
    goto inicio
)

echo.
echo Alteracao detectada!
echo Enviando para o GitHub...

git commit -m "Atualizacao automatica"
git push

echo.
echo Concluido!
timeout /t 5 /nobreak >nul

goto inicio