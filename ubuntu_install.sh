#!/bin/bash

sudo apt install fortune-mod 
sudo apt install cowsay
sudo apt install lolcat

sudo cp cows/* /usr/share/cowsay/cows
sudo cp fortunes/* /usr/share/games/fortunes/


echo '# Fortune-Cowsay-Lolcat
if [ -x /usr/games/fortune -a -x /usr/games/cowsay ]; then
	fortune drwho | cowsay -f k9 | lolcat
fi' >> ~/.bashrc 

source ~/.bashrc
