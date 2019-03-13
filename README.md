# fortune-cowsay-lolcat
Set up instructions for fortune-cowsay-lolcat

## FEDORA:
### Installation for packages: 

fortune: 
```
sudo dnf install fortune-mod 
```

cowsay: 
```
sudo dnf install cowsay
```

lolcat: 
```
sudo dnf install -y rubygems
gem install lolcat
```

### Adding to bashrc
```
if [ -x /usr/bin/fortune -a -x /usr/bin/cowsay ]; then
	fortune drwho | cowsay -f k9 | lolcat
fi
```
Then `source .bashrc`. 


## UBUNTU:
## Installation of packages: 

fortune: 
```
sudo apt install fortune-mod 
```

cowsay: 
```
sudo apt install cowsay
```

lolcat: 
```
sudo apt install lolcat
```

## Adding to bashrc
```
if [ -x /usr/games/fortune -a -x /usr/games/cowsay ]; then
	fortune | cowsay -f stegosaurus | lolcat
fi
```
Then `source .bashrc`. 

## Creating your own cows
Copy cows to `/usr/share/cowsay` (Fedora). 
If you create your own cow, all backslashes have to be doubled. 

## Create your own fortune file

Write all quotes in a file, separated by %. Then move file to `/usr/share/games/fortune/` (Fedora) and run: 
```
strfile -c % yourlist yourlist.dat
```

