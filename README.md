# What is screen-generator?

screen-generator generates screen configuration files and launches screen by providing a chain of commands or a windows configuration

To have a brief insight of what it can do, run

`$ ./screen-generator -c "watch -c 'ps -e -o cmd | tac';watch df ;tcpdump;top"`

# Setup

## 1) Debian package

`$ dpkg -i screen-generator.deb`

## 2) Manually

`$ sudo apt-get install -y screen`
$ sudo git clone https://github.com/boddhissattva/screen-generator `
$ sudo chmod -R u+rx screen-generator `
$ cd screen-generator`
$ sudo cp ./screen-generator.1.gz /usr/local/man/man1/  `

------------ available only from version v0.4 -----------

## 2) PPA package

`sudo add-apt-repository ppa:user3514/screen-generator && sudo apt-get update`
sudo apt-get install screen-generator`


# Documentation

`man screen-genrator` or `screen-generator -l screen-generator.1` if not installed

see also `./examples/*`

# Bugs

Please report any bug at `jean.yvan.tissot[at]gmail.com`


# Version

screen-generator v0.3
