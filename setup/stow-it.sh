#!/bin/bash


cd ~/.dotfiles

arr=($(ls -d */ | sed "s/\///g"))

for item in "${arr[@]}"
do
    if [[ $item == "sudo" ]]; then
        sudo stow --adopt -v -t /etc/sudoers.d $item
        continue
    fi

    if [[ $item == "setup" ]]; then
        stow --adopt -v -t ~/applications/setup $item
        continue
    fi

    if [[ $item == "my-services" ]]; then
        continue
    fi

    stow --adopt -v $item
done

cd ~/.dotfiles
read -p "do you want to run 'git restore .' ? [y/Y]" option
sleep 5
if [[ $option == "y" || $option == "Y" ]]; then
    git restore .
fi
