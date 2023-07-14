#!/bin/bash

sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y ssh
sudo apt-get install -y xclip

if [[ -d ~/.ssh ]]; then
	cd ~/.ssh
	idfile=$(find id* -type f | wc -l)
	if [[ ${idfile} -gt 1 ]]; then
		ls
		echo "Coping the public key to clipboard"
		pubfile=$(find id*.pub -type f)
		cat $pubfile | xclip -sel clip
	else
		read -p "Enter your Github email: " useremail
		ssh-keygen -t ed25519 -C "${useremail}"
		eval "$(ssh-agent -s)"
		pubfile=$(find id*.pub -type f)
		cat $pubfile | xclip -sel clip

	fi
else
	mkdir -p ~/.ssh
	cd ~/.ssh
	read -p "Enter your Github email: " useremail
	ssh-keygen -t ed25519 -C "${useremail}"
	eval "$(ssh-agent -s)"
	pubfile=$(find id*.pub -type f)
	cat $pubfile | xclip -sel clip
fi
