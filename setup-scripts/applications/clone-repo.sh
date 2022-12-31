#!/bin/bash

mkdir -p ~/source-installed
cd ~/source-installed

git clone https://git.suckless.org/slock
git clone https://github.com/Naheel-Azawy/stpv.git
git clone https://github.com/NikitaIvanovV/ctpv.git
git clone https://github.com/google/google-java-format.git
git clone https://github.com/kamiyaa/joshuto.git

cd $HOME

git clone git@github.com:thalha-dev/.privateDotfiles.git

cd ~/wiki

git clone git@github.com:thalha-dev/myWiki.git
git clone git@github.com:thalha-dev/private-wiki.git
