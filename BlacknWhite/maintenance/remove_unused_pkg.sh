#!/bin/bash

# remove orphaned packages and their dependencies
remove_opkg_dep() {
    printf 'Removing orphaned packages and its dependencies'
    pacman -Qdtq | pacman -Rns -
}

# prints out what would be removed from installed packages that are dependencies
print_opkg_dep() {
    pacman -Qqd | pacman -Rsu --print -
}

# cleans old package versions from the package cache
clean_old_pkg() {
    paccache -r
}

printf "Enter the corresponding number to run the function desired: "
printf "1. Remove orphaned packages and its dependencies"
printf "2. Print orphaned packages and its dependencies"
printf "3. Clean old package versions from the cache"

echo -n "Enter the corresponding letter to run the function desired (a/b/c): "
read choice

case $choice in 

    1)
        remove_opkg_dep
        ;;
    2)
        print_opkg_dep
        ;;
    3)
        clean_old_pkg
        ;;
    *)
        printf "Invalid choice"
        ;;
esac
