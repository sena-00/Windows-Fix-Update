@echo off
chcp 65001 >nul
mode con: cols=70 lines=10
echo Script desenvolvido pela Central de Serviços N2 - Lucas E Téo
color 4

REM Check de privilégios administrativos
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"


REM Se o usuário não é admin, pede para reiniciar o script com as credenciais corretas
if %errorlevel% neq 0 (
    echo ATENCAO: Voce nao esta rodando o script como administrador.
    echo Por favor, inicie o script com privilegios administrativos.
    pause
    goto :eof
)

REM Parte 1: CHKDSK
echo Voce executou Parte 1. CHKDSK
start cmd /k chkdsk /r

REM Parte 2: SFC
echo Voce executou Parte 2. SFC
start cmd /k sfc /scannow

REM Parte 3: GPUPDATE
echo Voce executou Parte 3. Gpupdate
start cmd /k gpupdate /force

REM Parte 4: POWERSHELL
echo Voce executou Parte 4. PowerShell
start powershell -command "get-hotfix ; pause"

REM Parte 5: PRINTER
echo Voce executou Parte 5. Printer
start ms-settings:printers

REM Parte 6: Defrag
echo Voce executou Parte 6. Defrag
start dfrgui

REM Parte 7: Zoom
echo Voce executou Parte 7. Zoom
REM Obtém o nome do usuário atual
set "nomeUsuario=%USERNAME%"

REM Define o caminho do diretório de aplicativos do usuário
set "caminhoZoom=C:\Users\%nomeUsuario%\AppData\Roaming\Zoom\bin\Zoom.exe"

REM Executa o Zoom
"%caminhoZoom%"

pause
echo Pressione qualquer tecla para continuar


