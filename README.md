# What is screen-generator?

`screen-generator` generates screen configuration files and launches screen by providing a chains of commands and/or window configurations

To have a brief insight, the command

    $ screen-generator "cmd1;cmd2;cmd3;cmd4"

will print a screen configuration file with 4 windows, each with a different command.

Moreover, the command

    $ screen-generator "vim +.txt"

will generate a screen with as much windows as the number of file matching `*.txt` with `vim` editor.

    $ screen-generator -x 5 -y  5 -e 

uses the `-e` flag which allows to directly launch a screen descibed by a `5x5` grid with shells as commands. 

# Install

     `$ dpkg -i screen-generator_0.5-1.deb`


# Documentation

* `man screen-generator`
* `screen-generator --help`
* `/usr/share/doc/screen-generator/examples/*`

# Author

For any suggestion, please send a mail to [jean.yvan.tissot[at]gmail.com](mailto:jean.yvan.tissot[at]gmail.com)

# Bugs

Please report any bug at [https://github.com/boddhissattva/screen-generator/issues](https://github.com/boddhissattva/screen-generator/issues)

# Version

`screen-generator v0.5`
