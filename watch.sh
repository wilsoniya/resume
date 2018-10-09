#!/usr/bin/env bash

# Utility script to invoke makefile any time a TeX sources change.

function compile() {
    make
}

compile

while true; do
    printf "### WAITING FOR CHANGES... ###\n"
    inotifywait -e close_write *.tex *.cls &> /dev/null
    printf "\n\n### CHANGE DETECTED; RECOMPILING ###\n"
    compile
done
