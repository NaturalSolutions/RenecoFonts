@REM https://gitlab.com/api/v4/projects/18612847/repository/tags?private_token=NWNQZz8ocvuTYUTGMcsq&tag_name=test&ref=master
@REM curl --header "PRIVATE-TOKEN: NWNQZz8ocvuTYUTGMcsq" "https://gitlab.com/api/v4/projects/18612847/repository/tags
@echo off
echo    ___                               
echo   ^|_  ^|                              
echo     ^| ^| ___ _ __ ___ _ __ ___  _   _ 
echo     ^| ^|/ _ \ '__/ _ \ '_ ` _ \^| ^| ^| ^|
echo /\__/ /  __/ ^| ^|  __/ ^| ^| ^| ^| ^| ^|_^| ^|
echo \____/ \___^|_^|  \___^|_^| ^|_^| ^|_^|\__, ^|
echo                                 __/ ^|
echo                                ^|___/ 

echo.
echo  ----------------------------------------
echo   1er Partie : Changer les fichiers
echo  ---------------------------------------- 
echo.
echo Tout d'abord, as-tu bien mit les nouveaux fichiers dans le projet ?
echo Si oui, as-tu aussi pense a editer le fichier "Package.json" en remplacant le numero de version par le nouveau ?
echo Pas encore ? Oublie ? Ferme cette fenetre et continue ton devoir :(
echo Si c'est fait alors on peut continuer :)
echo.
pause;

echo.
echo  ----------------------------------------
echo   2eme Partie : Envoyer les changements
echo  ---------------------------------------- 
echo.
echo Nous allons d'abord envoyer tes changements en ligne, pour pouvoir ensuite creer une version avec ces derniers.
echo Pour ce faire nous allons creer un "commit", comme un paquet cadeau vide, dans lequel on va mettre tous tes changements, puis on va l'envoyer en ligne.
echo Je t'offre le choix (oui je suis sympa) de donner un titre à ton commit, que tu puisses savoir dans 2 mois quel changement ce commit faisait.
echo Evite de faire un titre trop long, il sera tronque, 50 lettres, c'est suffisant.
echo Verifie bien ton titre une derniere fois avant de l'envoyer. Apres ce sera trop tard. :)
echo.
set /p TitreCommit="Titre du commit: "

git add --all
git commit -am "%TitreCommit%"
git push

echo.
echo  ----------------------------------------
echo   3eme Partie : Creer un numero de version / tag
echo  ---------------------------------------- 
echo.
echo Maintenant que tes changements ce sont envoyes, et qu'ils sont en ligne, nous pouvons creer une version, mais la version a besoin d'une etiquette, un tag, nous utilisons ce tag comme numero de version.
pause;


@REM set /p compteur="Choix: "
@REM set /p compteur="Choix: "
@REM set /p compteur="Choix: "
@REM set /p compteur="Choix: "
@REM curl --request POST "https://gitlab.com/api/v4/projects/18612847/repository/tags?private_token=NWNQZz8ocvuTYUTGMcsq&tag_name=%compteur%&ref=master"
pause;