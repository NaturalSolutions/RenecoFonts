@echo off
setlocal enabledelayedexpansion

echo    ___                               
echo   ^|_  ^|                              
echo     ^| ^| ___ _ __ ___ _ __ ___  _   _ 
echo     ^| ^|/ _ \ '__/ _ \ '_ ` _ \^| ^| ^| ^|
echo /\__/ /  __/ ^| ^|  __/ ^| ^| ^| ^| ^| ^|_^| ^|
echo \____/ \___^|_^|  \___^|_^| ^|_^| ^|_^|\__, ^|
echo                                 __/ ^|
echo                                ^|___/ 


echo Si jamais la nouvelle version n'est pas cree et que tu n'es pas dev, demande a un dev de l'aide. Ne perds pas de temps
echo.
echo ATTENTION, AUCUN ACCENT OU CARACTERE SPECIAL, JUSTE DES LETTRES ET ESPACES. Pas de = ou de é ou - ou [ ou ( ou autres, tu as compris l'idee :)
echo.
:ReleaseRapide
set /p NumeroTags="Numero de version / tags (Exemple : 22.01) : "
echo.
set /p TitreRelease="Titre de la mise a jour / release (Exemple : Ajout de logo pour CM) : "
echo.
set /p DescriptionRelease="Une description de la release (Exemple : Ajout de l'icon reneco-stats-logo pour central monitoring pour les version) : "
echo.

set /p choix=Es-tu ok avec ces infos ? (o) Preferes tu recommencer? (r)
IF "%choix%" NEQ "o" goto :ReleaseRapide 

echo.
echo.
git pull
git add --all
git commit -am "%TitreRelease%"
git push
echo.
echo.
curl --request POST "https://gitlab.com/api/v4/projects/18612847/repository/tags?private_token=NWNQZz8ocvuTYUTGMcsq&tag_name=%NumeroTags%&ref=master"
echo.
echo.
set FixTitreRelease=!TitreRelease: =%%20!
set FixDescriptionRelease=!DescriptionRelease: =%%20!
curl --request POST "https://gitlab.com/api/v4/projects/18612847/releases?private_token=NWNQZz8ocvuTYUTGMcsq&tag_name=%NumeroTags%&description=%FixDescriptionRelease%&name=%FixTitreRelease%&ref=master"
echo.
echo.
echo C'est bon c'est fini !
PING -n 2 127.0.0.1>nul
echo Tu peux respirer
PING -n 3 127.0.0.1>nul
echo Enfin pas vraiment..
PING -n 3 127.0.0.1>nul
echo On va verifier si la nouvelle version s'est bien cree..
PING -n 3 127.0.0.1>nul
echo Je t'ouvre la page..
PING -n 3 127.0.0.1>nul
echo Et si tout est en place, et bien tu auras cree une release en 2min avec un cmd sans tapper aucune commande :)
PING -n 3 127.0.0.1>nul
echo.
pause;

start chrome /new-window https://gitlab.com/natural-solutions/reneco-fonts/-/releases 