# What is screen-generator?

`screen-generator` generates screen configuration files and launches screen by providing chains of commands or window configurations

    $ screen-generator -c "cmd1;cmd2;cmd3;cmd4"

will launch a screen with 4 windows each with the specified command.

Moreover, the command

    $ ./screen-generator -c "transmission-cli +.torrent"

will open a screen with as much windows as the number of file matching `*.torrent` with the command `transmission-cli`. The plus sign asks `screen-generator` to expand the command in a command chain.

# Install

    $ dpkg -i screen-generator_0.4-1.deb

# Documentation

* `man screen-genrator`
* `screen-generator --help`
* `/usr/share/screen-generator/examples/*`

# Bugs

Please report any bug on `https://github.com/boddhissattva/screen-generator/issues`

# Version

screen-generator `v0.4`
