#!/bin/bash



# Compile document
pdflatex -shell-escape -interaction=nonstopmode -shell-escape main

# Compile nomenclature
makeindex main.nlo -s nomencl.ist -o main.nls

# Compile index
makeindex main

# Compile bibliography
biber main

# Compile document
pdflatex -shell-escape main

# Compile glossary
makeglossaries main

# Compile document
pdflatex -shell-escape main
