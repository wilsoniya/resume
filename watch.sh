#!/usr/bin/env bash

# Utility script to invoke makefile any time a TeX source changes.

TEX_FILE=michael-wilson-software-engineer-resume.tex

function compile() {
    make
}

compile

while true; do
    printf "### WAITING FOR CHANGES... ###\n"
    inotifywait -e close_write "${TEX_FILE}" *.cls &> /dev/null
    printf "\n\n### CHANGE DETECTED; RECOMPILING ###\n"
    compile
done
