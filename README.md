# HOW CAN I HAVE A BRIEF INSIGHT OF WHAT SCREEN_GENERATOR DOES?

./screen-generator -c "watch -c 'ps -e -o cmd | tac';watch df ;tcpdump;top"   

# SETUP

## DEBIAN PACKAGE

$ dpkg -i screen-generator.deb

## MANUALLY

$ sudo apt-get install -y screen
$ sudo git clone https://github.com/boddhissattva/screen-generator 
$ sudo chmod -R u+rx screen-generator 
$ cd screen-generator
$ sudo cp ./screen-generator.1.gz /usr/local/man/man1/  

------------ AVAILABLE ONLY FROM VERSION v0.4 -----------

## PPA PACKAGE

sudo add-apt-repository ppa:user3514/screen-generator && sudo apt-get update
sudo apt-get install screen-generator


# DOCUMENTATION

"man screen-genrator" or "screen-generator -l screen-generator.1" if not installed

see also ./examples/*

# BUGS

Please report any bug at jean.yvan.tissot[at]gmail.com.


# VERSION

screen-generator v0.3
