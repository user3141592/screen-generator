# What is screen-generator?

`screen-generator` generates screen configuration files and launches screen by providing chains of commands or window configurations

To have a brief insight, the command

    $ screen-generator "cmd1;cmd2;cmd3;cmd4"

print a screen configuration file with for windows, each with a different command.

Moreover, the command

    $ screen-generator "vim +.txt"

will generate a screen with as much windows as the number of file matching `*.txt` with the `vim` command

    $ screen-generator -x 5 -y  5 -e -N

Launch directly a screen descibed by a 5x5 grid with shells as commands. 

If the command chain is not given, `screen-generator` prompt for commands interactively.

# Install

## 1) Debian package

* `$ dpkg -i screen-generator_0.5-1.deb`

## 2) PPA package (only available from version v0.4)

* `sudo add-apt-repository ppa:user3514/screen-generator`

* `sudo apt-get update`
* `sudo apt-get install screen-generator`


# Documentation

* `man screen-generator`
* `screen-generator --help`
* `/usr/share/doc/screen-generator/examples/*`

# Author

For any suggestion, please send a mail to [jean.yvan.tissot[at]gmail.com](mailto:jean.yvan.tissot[at]gmail.com)

# Bugs

Please report any bug at [https://github.com/boddhissattva/screen-generator/issues](https://github.com/boddhissattva/screen-generator/issues)

# Version

screen-generator `v0.5`
