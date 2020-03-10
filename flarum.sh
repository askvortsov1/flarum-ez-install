#!/bin/bash

OVERRIDE_PATHS=("site.php" "index.php" "flarum" "assets/" "vendor/" "storage/" ".htaccess" ".nginx.conf")
NON_OVERRIDE_PATHS=("composer.json" "extend.php")

interactive=1


mk_tmp_dir()
{
    mkdir .tmp
    mkdir .tmp/flarum
}

rm_temporary_dirs()
{
    if [[ -d ".tmp" ]]; then
        rm -rf .tmp
    fi
    if [[ -d "utils" ]]; then
        rm -rf utils
    fi
}

download()
{
    curl -o .tmp/flarum.zip --remote-name --location https://github.com/askvortsov1/flarum-ez-install/releases/latest/download/release.zip
    unzip .tmp/flarum.zip -d .tmp/flarum
}

compat()
{
    if [[ -d "public/assets" ]]; then
        mv public/assets assets
    fi
    if [[ -f "bootstrap.php" ]]; then
        mv bootstrap.php extend.php
    fi
    rm -rf public
}

disable_extensions()
{
    if [[ -f "config.php" ]] && [[ -d "vendor" ]]; then
        mv '.tmp/flarum/utils/extensionManager' .
        php extensionManager
        rm extensionManager
    fi
}

generate_new_installed_json()
{
    if [[ -f "config.php" ]] && [[ -d "vendor" ]]; then
        mv '.tmp/flarum/utils/installedMerger' .
        php installedMerger
        rm installedMerger
    fi
}

install()
{
    for t in ${OVERRIDE_PATHS[@]}; do
        cp -rf ".tmp/flarum/$t" .
    done
    for t in ${NON_OVERRIDE_PATHS[@]}; do
        if [[ ! -f "$t" ]] && [[ ! -d "$t" ]]; then
            mv ".tmp/flarum/$t" .
        fi
    done
}

update_installed_json()
{
    if [[ -f ".tmp/installed.json" ]]; then
        mv .tmp/installed.json vendor/composer/installed.json
    fi
}


# MAIN

rm_temporary_dirs
mk_tmp_dir
download
compat
disable_extensions
generate_new_installed_json
install
update_installed_json
rm_temporary_dirs