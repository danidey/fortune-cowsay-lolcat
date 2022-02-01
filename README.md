# fortune-cowsay-lolcat
Set up instructions for fortune-cowsay-lolcat.


## LINUX:

### FEDORA:

Install the following packages:

1. fortune: 
```
sudo dnf install fortune-mod 
```

2. cowsay: 
```
sudo dnf install cowsay
```

3. lolcat: 
```
sudo dnf install -y rubygems
gem install lolcat
```

Add to your .bashrc file:

```
if [ -x /usr/bin/fortune -a -x /usr/bin/cowsay ]; then
	fortune drwho | cowsay -f k9 | lolcat
fi
```
Then run :
```
source .bashrc
``` 


### UBUNTU:

Install the following packages:

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

Add to your .bashrc file:

```
if [ -x /usr/games/fortune -a -x /usr/games/cowsay ]; then
	fortune | cowsay -f stegosaurus | lolcat
fi
```

Then run 
```
source .bashrc
``` 

## MAC

Install (Homebrew)[https://brew.sh/index_de].

Using homebrew install fortune, cowsay and lolcat:

```
brew install fortune
brew install cowsay 
brew install lolcat
```

Then add to your .zprofile:

```
fortune | cowsay | lolcat
```

## Creating your own cows
Copy cows to `/usr/share/cowsay` (Fedora) or use -f and the fulll path (MAC) in the cowsay command.
If you create your own cow, all backslashes have to be doubled. 

## Create your own fortune file

Write all quotes in a file, separated by %. Then move file to `/usr/share/games/fortune/` (Fedora) and run: 
```
strfile -c % yourlist yourlist.dat
```
Or just use the full path after the fortune command (MAC)
