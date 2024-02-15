:menu
@echo off & color 0f & cls & title Redstart RP Helper
mode 200,40
color 09
echo.
echo.
echo.
echo        [1] Installation de FiveM     [2] Relier son discord   [3] Probleme de chat vocal
echo.
echo.
echo        [4] Probleme de connexion     [5] Probleme de vote     [6] Vider son cache
echo.
echo.
echo        [7] Besoin d'aide             [8] Fermez l'app
echo.
echo.
echo.
set /p answer="Choix ? > "
if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :4)
if /i {%ANSWER%}=={5} (goto :5)
if /i {%ANSWER%}=={6} (goto :6)
if /i {%ANSWER%}=={7} (goto :7)
if /i {%ANSWER%}=={8} (goto :8)
goto :menu

:1
color 09
echo.
echo Redirection vers le tutoriel d'installation de FiveM...
echo.
ping localhost -n 3 >nul
echo Redirection effectuee
echo.
start https://youtu.be/1vZzNI5nrb4
echo.
echo Fermeture du programme en cours...
echo.
ping localhost -n 5 >nul
goto :menu

:2
color 09
echo.
echo Redirection vers le tutoriel afin de relier son discord...
echo.
ping localhost -n 3 >nul
echo Redirection effectuee
echo.
start https://youtu.be/yzN8jDog-bI
echo.
echo Fermeture du programme en cours...
echo.
ping localhost -n 5 >nul
exit

:3
color 09
echo.
echo Redirection vers le tutoriel de probleme de chat vocal...
echo.
ping localhost -n 3 >nul
echo Redirection effectuee
echo.
start https://youtu.be/yX4AOJGDlsA
echo.
echo Redirection vers le menu...
echo.
ping localhost -n 3 >nul
goto :menu

:4
color 09
echo.
echo.
echo.
echo Seulement si erreur "Vous n'etes pas consideres comme Citoyens"
echo.
echo.
echo.
set /p answer="Continuez (o/n) > "
if /i {%ANSWER%}=={n} (goto :menu)
echo Fermeture de FiveM en cours...
echo.
ping localhost -n 2 >nul
set runfivem=tasklist /fi "imagename eq FiveM.exe" | find ":" > nul
if errorlevel 1 set runfivem=yes
if "%run%"=="yes" taskkill /f /im "FiveM.exe"
ping localhost -n 2 >nul
echo Fermeture de FiveM : OK.
echo.
ping localhost -n 1 >nul
echo.
echo Vidange du cache + dossier logs et crashes en cours...
echo.
ping localhost -n 3 >nul
set fivempath="%LocalAppdata%\FiveM\FiveM.app\data"
set filelock=game-storage
cd %fivempath%
for /f "tokens=*" %%A in ('dir /b') do (
  if not "%%~nxA"=="%filelock%" (
    rmdir /q %%A
  )
)
ping localhost -n 2 >nul
set fivemlc="%LocalAppdata%\FiveM\FiveM.app"
del /f /q %fivemlc%\crashes\*.*
del /f /q %fivemlc%\logs\*.*
echo Vidange du cache + dossier logs et crashes : OK.
echo.
echo Fermeture de Discord en cours...
echo.
ping localhost -n 2 >nul
set rundiscord=tasklist /fi "imagename eq Discord.exe" | find ":" > nul
if errorlevel 1 set rundiscord=yes
if "%run%"=="yes" taskkill /f /im "Discord.exe"
ping localhost -n 2 >nul
echo Fermeture de Discord : OK.
echo.
ping localhost -n 1 >nul
echo.
echo Suppression des dossier Cache / Code Cache / GPUCache (Discord) en cours...
echo.
ping localhost -n 3 >nul
set discordpath="%Appdata%\Discord"
rmdir /q "%discordpath%\Cache"
rmdir /q "%discordpath%\Code Cache"
rmdir /q "%discordpath%\GPUCache"
ping localhost -n 2 >nul
echo Suppression des dossier Cache / Code Cache / GPUCache (Discord) : OK.
echo.
ping localhost -n 1 >nul
echo.
echo.
echo Vidange de la corbeille en cours...
echo.
ping localhost -n 1 >nul
del /f /q %systemdrive%\$Recycle.bin
echo Vidange de la corbeille : OK.
echo.
ping localhost -n 2 >nul
echo.
echo.
echo.
echo L'ordinateur doit redemarrer pour appliquer tous les parametres.
echo.
echo.
echo.
echo.
echo        [1] Redemarrer Maintenant     [2] Redemarrer plus-tard
echo.
echo.
echo.
set /p answer="Choix ? > "
if /i {%ANSWER%}=={1} (goto :re)
if /i {%ANSWER%}=={2} (goto :menu)
goto :menu

:re
color 09
echo.
echo.
set /p answer="Etes vous sur de vouloir redemarrer maintenant (o/n) ? > "
if /i {%ANSWER%}=={n} (goto :menu)
ping localhost -n 2 >nul
echo.
echo.
echo Redemarrage en cours...
echo.
echo.
ping localhost -n 2 >nul
shutdown /r

:5
color 09
echo.
echo Redirection vers le tutoriel de probleme de vote...
ping localhost -n 3 >nul
echo Redirection effectuee
start https://youtu.be/yX4AOJGDlsA
echo.
echo Redirection vers le menu...
ping localhost -n 3 >nul
goto :menu

:6
color 09
echo.
echo.
echo Vidange du cache en cours...
echo.
ping localhost -n 3 >nul
set fivempath="%LocalAppdata%\FiveM\FiveM.app\data"
set filelock=game-storage
cd %fivempath%
for /f "tokens=*" %%A in ('dir /b') do (
  if not "%%~nxA"=="%filelock%" (
    rmdir /q %%A
  )
)
echo Vidange du cache : OK.
echo.
ping localhost -n 1 >nul
echo Vidange de la corbeille en cours...
echo.
ping localhost -n 1 >nul
del /f /q %systemdrive%\$Recycle.bin
echo Vidange de la corbeille : OK.
echo.
ping localhost -n 2 >nul
echo.
echo Redirection vers le menu...
echo.
ping localhost -n 2 >nul
goto :menu

:7
color 09
echo.
echo.
echo Obtenez de l'aide sur notre serveur Discord
ping localhost -n 2 >nul
echo.
echo En ouvrant un ticket dans le salon #ticket
echo.
ping localhost -n 2 >nul
echo Redirection vers notre serveur Discord...
echo.
ping localhost -n 5 >nul
start https://discord.gg/redstartrp
ping localhost -n 3 >nul
echo Redirection vers le menu...
echo.
ping localhost -n 5 >nul
goto :menu

:8
color 09
echo.
echo.
echo Fermeture du script...
ping localhost -n 2 >nul
exit