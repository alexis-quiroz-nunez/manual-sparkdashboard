#!/bin/bash

# 1. Instala MkDocs y el tema Material en Codespaces
pip install mkdocs mkdocs-material

# 2. Configura un nuevo proyecto de MkDocs en el repositorio
mkdocs new .

# 3. Configura el archivo mkdocs.yml para el manual de usuario
echo "
site_name: 'Manual de Usuario de Spark'
theme:
  name: material
nav:
  - Home: index.md
  - Introducción: introduccion.md
  - Instalación: instalacion.md
  - Guía de Uso: guia-de-uso.md
  - FAQ: faq.md
" > mkdocs.yml

# 4. Crea las páginas de la wiki en la carpeta docs
echo '# Bienvenido al Manual de Usuario' > docs/index.md
echo '# Introducción' > docs/introduccion.md
echo '# Instalación' > docs/instalacion.md
echo '# Guía de Uso' > docs/guia-de-uso.md
echo '# FAQ' > docs/faq.md

# 5. Realiza un commit inicial y sube los cambios a GitHub
git add .
git commit -m "Inicializa manual de usuario con MkDocs"
git push origin main

# 6. Publica en GitHub Pages (configura rama gh-pages y despliegue)
mkdocs gh-deploy
