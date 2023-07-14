#!/bin/bash

cd ~/.dotfiles || exit

arr=($(ls -d */ | sed "s/\///g"))

for item in "${arr[@]}"; do
	if [[ $item == "sudo" ]]; then
		sudo stow --adopt -v -t /etc/sudoers.d $item
		continue
	fi

	if [[ $item == "sudo-scripts" ]]; then
		sudo stow --adopt -v -t / $item
		continue
	fi

	if [[ $item == "my-services" ]]; then
		continue
	fi

	if [[ $item == "fonts" ]]; then
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
