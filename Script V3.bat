@echo off
chcp 65001 >nul
mode con: cols=65 lines=21
echo               ^|-------------^|---------------^|
echo               ^|  Uma cortesia da equipe N2  ^|
echo               ^|-------------^|---------------^|
echo               ^|   Etapa     ^|     Status    ^|
echo               ^|-------------^|---------------^|
echo               ^|   CHKDSK    ^|»»»»»»OK»»»»»»»^|
echo               ^|-------------^|---------------^|
echo               ^|     SFC     ^|»»»»»»OK»»»»»»»^|
echo               ^|-------------^|---------------^|
echo               ^|   GPUPDATE  ^|»»»»»»OK»»»»»»»^|
echo               ^|-------------^|---------------^|
echo               ^|   PWRSHELL  ^|»»»»»»OK»»»»»»»^|
echo               ^|-------------^|---------------^|
echo               ^|   PRINTER   ^|»»»»»»OK»»»»»»»^|
echo               ^|-------------^|---------------^|
echo               ^|   DEFRAG    ^|»»»»»»OK»»»»»»»^|
echo               ^|-------------^|---------------^|
echo               ^|    ZOOM     ^|»»»»»»OK»»»»»»»^|
echo               ^|-------------^|---------------^|

start cmd /k chkdsk /r
start cmd /k sfc /scannow
start cmd /k gpupdate /force
start powershell -command "get-hotfix ; pause"
start ms-settings:printers
start dfrgui
set "nomeUsuario=%USERNAME%"
set "caminhoZoom=C:\Users\%nomeUsuario%\AppData\Roaming\Zoom\bin\Zoom.exe"
"%caminhoZoom%"

pause

