#!/bin/sh

PUBLIC_DIR="${GITHUB_WORKSPACE}/public"

#???
function print_info() {
    echo -e "\e[36mINFO: ${1}\e[m"
}

emacs --batch --no-init-file --load ./projects.lisp --funcall toggle-debug-on-error

html-minifier-terser --collapse-whitespace --remove-comments --remove-optional-tags --remove-redundant-attributes --remove-script-type-attributes --remove-tag-whitespace --use-short-doctype --minify-css true --minify-js true --input-dir ${PUBLIC_DIR} --output-dir ${PUBLIC_DIR} --file-ext html

html-minifier-terser --collapse-whitespace --remove-comments --remove-optional-tags --remove-redundant-attributes --remove-script-type-attributes --remove-tag-whitespace --use-short-doctype --minify-css true --minify-js true --input-dir ${PUBLIC_DIR} --output-dir ${PUBLIC_DIR} --file-ext css
