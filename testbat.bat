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
echo Je t'offre le choix (oui je suis sympa) de donner un titre a ton commit, que tu puisses savoir dans 2 mois quel changement ce commit faisait.
echo Evite de faire un titre trop long, il sera tronque, 50 lettres, c'est suffisant. Et evite les accents ou caracteres bizarres, on est pas dans matrix.
:TitreCommit
echo.
set /p TitreCommit="Titre du commit: "
echo.
echo [INFORMATION] Donc ton titre ce serait : "%TitreCommit%"
echo.
set /p choix=[QUESTION] Ca te convient et on continue (o) ? Ou je te laisse le choix de changer a nouveau, je suis gentil :) (n) ? (o/n)
IF "%choix%"=="n" goto :TitreCommit && echo.

echo.
git pull
git add --all
git commit -am "%TitreCommit%"
git push
echo.

echo  ----------------------------------------
echo   3eme Partie : Verification d'envoi du commit
echo  ---------------------------------------- 
echo.
echo Normalement tout c'est bien passe, mais en informatique, cette phrase semble etre rare.
echo On va donc prendre le temps de verifier si le commit est bien partie.
echo Et vu que je suis toujours aussi gentil, je t'ouvre directement le page en question
echo Si jamais, le commit ne s'est pas envoye, demande a un developpeur de chercher a comprendre pourquoi. Ne perds pas ton temps sur ca, on est dev et on est paye a fixer ce type de probleme :)
echo Pour ouvrir la page, appuie sur une touche
echo.
pause;

start chrome /new-window https://gitlab.com/natural-solutions/reneco-fonts/-/commits/master 

echo.
echo  ----------------------------------------
echo   4eme Partie : Creer un numero de version / tag
echo  ---------------------------------------- 
echo.
echo Tu vois tes changements ? Bien joue !! Aucun probleme, pas besoin de prevenir un dev alors, ouf..
echo Maintenant que tes changements ce sont envoyes, et qu'ils sont en ligne, nous pouvons creer une release / nouvelle version.
echo La nouvelle version a besoin d'une etiquette, un tag, un texte qui permet de l'identifier.
echo Nous utilisons ce tag comme un numero de version.
echo Merci donc d'indiquer ici ton nouveau numero de version, le meme que tu as mit dans le fichier "Package.json".
echo Exemple : 22.01.96
:NumeroTag
echo.
set /p NumeroTags="Numero de version / tags : "
echo.
echo [INFORMATION] Donc le numero de version ce serait : "%NumeroTags%"
echo.
set /p choix=[QUESTION] Ca te convient et on continue (o) ? Ou je te laisse le choix de changer a nouveau, je suis gentil :) (n) ? (o/n)
IF "%choix%"=="n" goto :NumeroTag && echo.

echo.
@REM curl --request POST "https://gitlab.com/api/v4/projects/18612847/repository/tags?private_token=NWNQZz8ocvuTYUTGMcsq&tag_name=%NumeroTags%&ref=master"
git tag -a %NumeroTags% -m "A new tag for a new release"
git push --tags
echo.

echo  ----------------------------------------
echo   3eme Partie : Verification de creation du tags
echo  ---------------------------------------- 
echo.
echo On fait comme pour le commit, on verifie que le tag s'est bien cree.
echo Je t'ouvre la page, si tu ne le vois pas, tu demandes de l'aide a un dev
echo Pour ouvrir la page, appuie sur une touche
echo.
pause;

start chrome /new-window https://gitlab.com/natural-solutions/reneco-fonts/-/tags 

echo.
echo  ----------------------------------------
echo   5eme Partie : Creer la nouvelle version / release
echo  ---------------------------------------- 
echo.
echo Voila le Boss de fin !!
echo Apres ca tu pourras enfin respirer :)
echo Pour gagner la guerre, tout ce qu'il nous faut c'est 2 informations : titre et description.
:TitreRelease
echo.
set /p TitreRelease="Titre de la release (Exemple : Ajout du logo QrCode) : "
echo.
echo [INFORMATION] Donc le titre de cette release ce serait : "%TitreRelease%"
echo.
set /p choix=[QUESTION] Ca te convient et on continue (o) ? Ou je te laisse le choix de changer a nouveau, je suis gentil :) (n) ? (o/n)
IF "%choix%"=="n" goto :TitreRelease && echo.
:DescriptionRelease
echo.
set /p DescriptionRelease="Description de la nouvelle version : "
echo.
echo [INFORMATION] Donc la description de cette release ce serait : "%DescriptionRelease%"
echo.
set /p choix=[QUESTION] Ca te convient et on continue (o) ? Ou je te laisse le choix de changer a nouveau, je suis gentil :) (n) ? (o/n)
IF "%choix%"=="n" goto :DescriptionRelease && echo.
echo.
echo Super, maintenant on a un titre, une description, un tag, on a tout ce qu'il faut !
echo Maintenant le moment de verifite, je vais envoyer tout ca en ligne, si tout ce passe bien, on a gagne !
echo.
pause;

echo.
curl --request POST --url "https://gitlab.com/api/v4/projects/18612847/releases" --header "content-type: application/json" --header "PRIVATE-TOKEN: NWNQZz8ocvuTYUTGMcsq" --data '{  "tag_name": "%NumeroTags%","description": "%DescriptionRelease%", "name": "%TitreRelease%", "ref": "master"}'

@REM curl --request POST "https://gitlab.com/api/v4/projects/18612847/releases?private_token=NWNQZz8ocvuTYUTGMcsq&tag_name=%NumeroTags%&description=%DescriptionRelease%&name=%TitreRelease%&ref=master"
echo.

echo  ----------------------------------------
echo   6eme Partie : FINI
echo  ---------------------------------------- 
pause;

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
echo Et si tout est en place, et bien tu auras créé une release en 2min avec un cmd sans tapper aucune commande :)
PING -n 3 127.0.0.1>nul
echo.
pause;

start chrome /new-window https://gitlab.com/natural-solutions/reneco-fonts/-/releases 