#!/bin/bash

# 1. Supprimer le contenu existant de _site
rm -rf _site

# 2. Générer les sites en français et anglais
quarto render

# 3. Déplacer le site généré vers la branche GitHub Pages
git checkout gh-pages
rm -rf fr en
mv _site/fr/ fr
mv _site/en/ en

# 4. Commit et push sur la branche gh-pages
git add .
git commit -m "Mise à jour du site Quarto"
git push origin gh-pages

# 5. Retour à la branche principale
git checkout main
