#!/bin/bash


cd ~/hdd/files

arr=($(ls -d */ | sed "s/\///g"))

for item in "${arr[@]}"
do
    if [[ $item == "Videos" ]]; then
        sudo stow --adopt -v -t $HOME/Videos $item
        continue
    fi

done
