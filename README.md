# What is screen-generator?

`screen-generator` generates screen configuration files and launches screen by providing chains of commands or window configurations

To have a brief insight of what it can do, run

`$ ./screen-generator -c "watch -c 'ps -e -o cmd | tac';watch df ;tcpdump;top"`

Moreover, the command

`$ ./screen-generator -c "transmission-cli +.torrent"`

will open a screen with as much windows as the number of file matching `*.torrent` with the command `transmission-cli`. The plus sign asks `screen-generator` to expand the command in a command chain.

# Install

## 1) Debian package

* `$ dpkg -i screen-generator.deb`

## 2) PPA package (only available from version v0.4)

* `sudo add-apt-repository ppa:user3514/screen-generator`

* `sudo apt-get update`
* `sudo apt-get install screen-generator`


# Documentation

* `man screen-genrator`
* `screen-generator --help`
* `/usr/share/screen-generator/examples/*`

# Bugs

Please report any bug on `https://github.com/boddhissattva/screen-generator/issues`

# Version

screen-generator `v0.4`
