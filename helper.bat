@echo off
setlocal enabledelayedexpansion
color 0A
chcp 1252 >nul
title Suporte Tecnico

:: ===============================
:: MENU PRINCIPAL
:menu
cls
call :titulo "Suporte Técnico"
echo.
echo 1 - Ferramentas de Rede
echo 2 - Diagnósticos do sistema
echo 3 - Utilitários
echo 0 - Sair
echo. 

set /p opcao="Escolha uma opção: "

if "%opcao%"=="1" goto rede
if "%opcao%"=="2" goto diagnostico
if "%opcao%"=="3" goto utilitarios
if "%opcao%"=="0" exit
goto menu
:: FIM MENU PRINCIPAL
:: ===============================


:: ===============================
:: MENU REDES
:rede
cls
call :titulo "Ferramentas de Rede"
echo.
echo 1 - Configuração de IP
echo 2 - Teste de Conectividade
echo 0 - Voltar
echo.
set /p opcao="Escolha uma opção: "

if "%opcao%"=="1" goto ipconfig_menu
if "%opcao%"=="2" goto teste_conectividade
if "%opcao%"=="0" goto menu
goto rede
:: FIM MENU REDES
:: ===============================


:: ===============================
:: MENU IPCONFIG

:ipconfig_menu
cls
call :titulo "Menu IPCONFIG"
echo.
echo 1 - Detalhes da Conexão
echo 2 - Detalhes Avançados de Conexão
echo 3 - Liberar e Renovar IP
echo 4 - Exibir DNS cache
echo 5 - Limpar DNS cache
echo 6 - Gerar relatório de rede
echo 7 - Ativar/Desativar Adaptador de Rede
echo 0 - Voltar
echo.
set /p opcao="Escolha uma opção: "

if "%opcao%"=="1" goto ipconfig_details
if "%opcao%"=="2" goto ipconfig_advanced
if "%opcao%"=="3" goto ipconfig_release_renew
if "%opcao%"=="4" goto ipconfig_showdns
if "%opcao%"=="5" goto ipconfig_cleardns
if "%opcao%"=="6" goto ipconfig_report
if "%opcao%"=="7" goto ipconfig_toggle_adapter
if "%opcao%"=="0" goto rede
goto ipconfig_menu
:: FIM MENU IPCONFIG
:: ===============================


:: ===============================
:: MENU TESTE CONECTIVIDADE

:teste_conectividade
cls
call :titulo "Teste de Conectividade"
echo.
echo 1 - Ping (Teste de latencia e alcance)
echo 2 - Tracert (Mapear a rota da conexao)
echo 3 - Netstat (Ver conexoes e portas ativas)
echo 4 - Ferramenta de Consulta DNS (NSLookup)
echo 5 - Conexões Ativas (netstat)
echo 0 - Voltar
echo.
set /p opcao="Escolha uma opção: "

if "%opcao%"=="1" goto teste_ping
if "%opcao%"=="2" goto teste_tracert
if "%opcao%"=="3" goto teste_netstat
if "%opcao%"=="4" goto teste_nslookup
if "%opcao%"=="5" goto teste_conexoes_ativas
if "%opcao%"=="0" goto rede
goto teste_conectividade
:: FIM MENU TESTE DE CONECTIVIDADE
:: ===============================


:: ===============================
:: MENU DIAGNOSTICO

:diagnostico
cls
call :titulo "Diagnósticos do sistema"
echo.
echo 1 - Informação do sistema
echo 2 - Verificar integridade dos arquivo
echo 3 - Verificar integridade do disco
echo 4 - Verificar memória
echo 5 - Checkup geral
echo 0 - Voltar
echo.
set /p opcao="Escolha uma opção: "

if "%opcao%"=="1" goto info_sistema
if "%opcao%"=="2" goto verificar_integridade_arquivos
if "%opcao%"=="3" goto verificar_integridade_disco
if "%opcao%"=="4" goto verificar_memoria
if "%opcao%"=="5" goto checkup_geral
if "%opcao%"=="0" goto menu
goto diagnostico
:: FIM MENU DIAGNOSTICO
:: ===============================

:: ===============================
:: MENU UTILITÁRIOS
:utilitarios
cls
call :titulo "Utilitários"
echo.
echo 1 - Limpeza de Disco
echo 2 - Formatar Disco
echo 3 - Desfragmentar Disco
echo 4 - Reparo do Windows
echo 5 - Backup dos drivers
echo 6 - Restauração do sistema
echo 7 - Reiniciar Spooler de Impressão
echo 8 - Reiniciar PC
echo 9 - Listar Programas Instalados
echo 10 - Winget
echo 0 - Voltar
echo.
set /p opcao="Escolha uma opção: "

if "%opcao%"=="1" goto limpeza_disco
if "%opcao%"=="2" goto formatar_disco
if "%opcao%"=="3" goto desfragmentar_disco
if "%opcao%"=="4" goto reparo_windows
if "%opcao%"=="5" goto backup_drivers
if "%opcao%"=="6" goto restauracao_sistema
if "%opcao%"=="7" goto reiniciar_spooler
if "%opcao%"=="8" goto reiniciar_pc
if "%opcao%"=="9" goto listar_programas
if "%opcao%"=="10" goto winget
if "%opcao%"=="0" goto menu
goto utilitarios
:: FIM MENU UTILITÁRIOS
:: ===============================



:: ===============================
:: Configuração de IP

::ipconfig_details
:ipconfig_details
cls
echo.
start "Detalhes da Conexão" cmd /c "ipconfig & pause"
goto ipconfig_menu

::ipconfig_advanced
:ipconfig_advanced
cls
echo.
start "Detalhes Avançados de Conexão" cmd /c "ipconfig /all & pause"
goto ipconfig_menu

::ipconfig_release_renew
:ipconfig_release_renew
cls
echo.
start "Liberar e Renovar IP" cmd /c "ipconfig /release & ipconfig /renew & pause"
goto ipconfig_menu

::ipconfig_showdns
:ipconfig_showdns
cls
echo.
start "Exibir DNS cache" cmd /c "ipconfig /displaydns & pause"
goto ipconfig_menu

::ipconfig_cleardns
:ipconfig_cleardns
cls
echo.
start "Limpar DNS cache" cmd /c "ipconfig /flushdns & pause"
goto ipconfig_menu

::ipconfig_report
:ipconfig_report
cls
echo.
set "rel=%USERPROFILE%\Desktop\%COMPUTERNAME%.txt"
start "Gerar relatório de rede" cmd /c "ipconfig /all > "%rel%" & echo Gerando arquivo de relatório no seu DESKTOP & echo. & pause"
goto ipconfig_menu

::ipconfig_toggle_adapter
:ipconfig_toggle_adapter
cls
echo.
netsh interface show interface
echo.
set "adapter_name="
set /p "adapter_name=Qual adaptador de rede sera ativado/desativado? :"

IF "%adapter_name%"=="" (
    cls
    echo Nenhum adaptador foi fornecido.
    pause
    GOTO :ipconfig_toggle_adapter
    )

start "Ativar/Desativar Adaptador de Rede" cmd /c "netsh interface set interface "%adapter_name%" admin=disable & netsh interface set interface "%adapter_name%" admin=enable & pause"
goto ipconfig_menu

:: FIM Configuração de IP
:: ===============================


:: ===============================
:: Teste de conectividade
::teste ping
:teste_ping

:inicio
cls
echo.
set /p "target=Qual IP sera monitorado? :"

IF "%target%"=="" (
    cls
    echo Nenhum IP foi fornecido.
    pause
    GOTO :inicio
    )

start "Ping" cmd /c "ping %target% -t & pause"
goto teste_conectividade

::teste_tracert
:teste_tracert

:inicio
cls
echo.
set /p "target=Qual IP sera de destino? :"

IF "%target%"=="" (
    cls
    echo Nenhum IP foi fornecido.
    pause
    GOTO :inicio
    )

start "Tracert" cmd /c "tracert %target% & pause"
goto teste_conectividade

::Netstat
:teste_netstat
cls
echo.
start "Netstat" cmd /c "netstat -ano & pause"
goto teste_conectividade

::teste_nslookup
:teste_nslookup

:inicio
cls
echo.
set /p "target=Qual dominio ou IP sera consultado? :"

IF "%target%"=="" (
    cls
    echo Nenhum dominio foi fornecido.
    pause
    GOTO :inicio
    )

start "NSLookup" cmd /c "nslookup %target% & pause"
goto teste_conectividade

::teste_conexoes_ativas
:teste_conexoes_ativas
cls
echo.
start "Conexões Ativas" cmd /c "netstat -ano & pause"
goto teste_conectividade
:: FIM teste de conectividade
:: ===============================



:: ===============================
:: Diagnostico do sistema
:info_sistema
cls
echo.
set "rel=%USERPROFILE%\Desktop\%COMPUTERNAME%-info_sistema.txt"
start "Gerar relatorio do Sistema" cmd /c "systeminfo > "%rel%" & echo Gerando arquivo de relatorio do sistema no seu DESKTOP & echo. & pause"
goto diagnostico

::verificar_integridade_arquivos
:verificar_integridade_arquivos
cls
echo.
start "Verificar Integridade de Arquivos" cmd /c "sfc /scannow & pause"
goto diagnostico

::verificar_integridade_disco
:verificar_integridade_disco
cls
echo.
start "Verificar Integridade de Disco" cmd /c "chkdsk /f /r & pause"
goto diagnostico

::verificar_memoria
:verificar_memoria
cls
echo.
start "Verificar Memória" cmd /c "mdsched.exe & pause"
goto diagnostico

::checkup_geral
:checkup_geral
cls
echo.
start "Verificar Integridade de Arquivos" cmd /c "sfc /scannow & pause"
timeout /t 5 >nul
start "Verificar Integridade de Disco" cmd /c "chkdsk /f /r & pause"
timeout /t 5 >nul
start "Verificar Memória" cmd /c "mdsched.exe & pause"
goto diagnostico
:: FIM Diagnostico do sistema
:: ===============================


:: ==============================
::Menu Utilitarios
::limpeza_disco
:limpeza_disco
cls
echo.
start "Limpeza de Disco" cmd /c "cleanmgr & pause"
goto utilitarios

::formatar_disco
:formatar_disco
cls
echo.
start "Formatar Disco" cmd /c "DISKPART & pause"
goto utilitarios

::desfragmentar_disco
:desfragmentar_disco
cls
echo.
start "Desfragmentar Disco" cmd /c "defrag C: & pause"
goto utilitarios

::reparo_windows
:reparo_windows
cls
echo.
start "Reparo do Windows" cmd /c "DISM /Online /Cleanup-Image /RestoreHealth & pause"
goto utilitarios

::backup_driver
:backup_drivers
cls
echo Iniciando backup dos drivers...
:: Inicia uma nova janela do CMD que roda o PowerShell e exporta os drivers
start "Backup de Drivers" /wait powershell -NoExit -Command ^
"Export-WindowsDriver -Online -Destination C:\BackupDrivers; ^
New-Item -Path C:\BackupDrivers\_ExportConcluido.flag -ItemType File; ^
exit"
:: Aguarda até que o arquivo de controle exista (sinal que o processo terminou)
:WAIT
if exist C:\BackupDrivers\_ExportConcluido.flag (
    del C:\BackupDrivers\_ExportConcluido.flag >nul
    echo Backup finalizado com sucesso!
) else (
    timeout /t 2 >nul
    goto WAIT
)
pause
goto utilitarios

::restauracao_sistema
:restauracao_sistema
cls
echo.
start "Restauração do Sistema" cmd /c "rstrui.exe & pause"
goto utilitarios

::reiniciar_spooler
:reiniciar_spooler
cls
echo.
start "Reiniciar Spooler" cmd /c "net stop spooler & net start spooler & pause"
goto utilitarios

::reiniciar_pc
:reiniciar_pc
cls
echo.
start "Reiniciar PC" cmd /c "shutdown /r /t 0 & pause"
goto utilitarios

::listar_programas
:listar_programas
cls
echo.
start "Listar Programas Instalados" powershell -NoExit -Command "Get-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*','HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*' | Select-Object DisplayName, DisplayVersion | Format-Table -AutoSize"

goto utilitarios

::winget
:winget
cls
echo.
start "Gerenciar Pacotes" cmd /c "winget & pause"
goto utilitarios

:: ===============================
:: FUNÇÃO DE TÍTULO REUTILIZÁVEL
:: ===============================
:titulo
setlocal enabledelayedexpansion
set "titulo=%~1"
set "tam_total=60"

:: Calcular tamanho do título
set "titulo_len=0"
for /l %%A in (0,1,100) do (
    set "char=!titulo:~%%A,1!"
    if "!char!"=="" goto tamanho_ok
    set /a titulo_len+=1
)
:tamanho_ok

:: Calcular padding
set /a total_padding=tam_total - titulo_len
set /a pad_esq=total_padding / 2
set /a pad_dir=total_padding - pad_esq

:: Gerar barras
set "prefix="
for /l %%i in (1,1,!pad_esq!) do set "prefix=!prefix!/"

set "sufix="
for /l %%i in (1,1,!pad_dir!) do set "sufix=!sufix!\"

:: Exibir título
echo.
echo !prefix! !titulo! !sufix!
echo.

endlocal
goto :eof