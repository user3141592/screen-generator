# how can i have a brief insight of what screenr-_generator does?

`./screen-generator -c "watch -c 'ps -e -o cmd | tac';watch df ;tcpdump;top"`

# SETUP

## 1) debian package

`$ dpkg -i screen-generator.deb`

## 2) manually

`$ sudo apt-get install -y screen`
$ sudo git clone https://github.com/boddhissattva/screen-generator `
$ sudo chmod -R u+rx screen-generator `
$ cd screen-generator`
$ sudo cp ./screen-generator.1.gz /usr/local/man/man1/  `

------------ available only from version v0.4 -----------

## 2) ppa package

`sudo add-apt-repository ppa:user3514/screen-generator && sudo apt-get update`
sudo apt-get install screen-generator`


# documentation

`man screen-genrator` or `screen-generator -l screen-generator.1` if not installed

see also `./examples/*`

# bugs

Please report any bug at jean.yvan.tissot[at]gmail.com.


# version

screen-generator v0.3
