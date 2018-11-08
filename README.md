# fortune-cowsay-lolcat
Set up instructions for fortune-cowsay-lolcat


## Installation for packages: 

fortune: 
```
sudo dnf install fortune-mod 
```

cowsay: 
````
sudo dnf install cowsay
```

lolcat: 
```
sudo dnf install -y rubygems
gem install lolcat
```

## Adding to bashrc
```
if [ -x /usr/bin/fortune -a -x /usr/bin/cowsay ]; then
	fortune drwho | cowsay -f k9 | lolcat
fi
```

## Creating your own cows
Copy cows to `/usr/share/cowsay`. 
If you create your own cow, all backslashes have to be doubled. 

## Create your own fortune file

Write all quotes in a file, separated by %. Then move file to `/usr/share/games/fortune/` and run: 
```
strfile -c % yourlist yourlist.dat
```

