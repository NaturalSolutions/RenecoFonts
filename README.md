# Reneco fonts

Open *demo.html* to see a list of all the glyphs in your font along with their 
codes/ligatures.

To use the generated font in desktop programs, you can install the TTF font. In order to copy the character associated with each icon, refer to the text box at the bottom right corner of each glyph in demo.html. The character inside this text box may be invisible; but it can still be copied. See this guide for more info: https://icomoon.io/#docs/local-fonts

You won't need any of the files located under the *demo-files* directory when including the 
generated font in your own projects.

You can import *selection.json* back to the IcoMoon app using the *Import Icons* button (or 
via Main Menu > Manage Projects) to retrieve your icon selection.

**Install with bower**

    bower install https://reneco:2NG1UpUzph_mzipYP4_e@gitlab.com/natural-solutions/reneco-fonts.git
	
Or

	bower install reneco-fonts
	
## Available icons

![Icon palette](http://depot.natural-solutions.eu/github_images/reneco%20font_splash_1.3.png)

## Demo page

[Reneco font demo page](https://natural-solutions.gitlab.io/reneco-fonts/demo.html)

## Latest version

In the lastest version the CSS classes like Bootstrap classes.

Before : 

    <span class="reneco ring"></span>

Now (like bootstrap):

    <span class="reneco reneco-ring"></span>

## Old version

You can still use the old version (1.0). You can install it with this bower command :

    bower install git@github.com:NaturalSolutions/RenecoFonts.git#1.0
    
## Ajouter une icone à la font
1. Se voir doter de l'icone
	1. Avec une préférence pour le 200x200
	2. Au format SVG
2. Se rendre sur le site https://icomoon.io/ et se connecter avec le compte design
3. Depuis le site, se rendre dans le projet reneco
4. Sur le menu burger, cliquer sur "import"
5. Une fois l'icone importée, s'assurer qu'elle soit sélectionnée comme les autres (contour jaune)
6. Si besoin, un coup d'édition de l'icone pour
	1. La renommer
	2. La recentrer
	3. La recadrer
7. Générer la font qui procédera à la génération d'un .zip
8. Prendre tout ce que le .zip a généré et le mettre dans le dossier du projet de la reneco font
9. Push sur github les changement pour que le projet soit à jour avec la nouvelle icone
10. Faire une release sur github avec le bon nom de version en tag pour que l'on puisse la récupérer sur nos autres projets
11. _Voilà_, vous savez ajouter une icone.

## Mettre à jour la font sur les différents projets
1. Vérifier sur la démo page que l'icone que l'on souhaite est bien présente.
2. Se rendre dans le front du projet
3. Executer la commande
```
bowser install reneco-fonts
```
4. Dans les messages qui suivent l'execution de la commande, on devrait apercevoir l'ancienne version, puis la nouvelle.
5. _Voilà_, vous avez mis à jour la reneco-fonts sur votre projet
