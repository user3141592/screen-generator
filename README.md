
# SETUP

$ git clone https://github.com/boddhissattva/screen-generator
$ cd screen-generator
$ chmod u+rx screen-generator
$ sudo apt-get install -y screen

To have an insight of what screen-generator can do, try running

$ ./screen-generator -c "watch -c 'ps -e -o cmd | tac';watch df ;tcpdump;top"   

# NAME

screen-generator - generates screen configuration files and launches screen by simply providing a chain of commands

SYNOPSIS

screen-generator [-c <COMMAND CHAIN>] [-x <X>] [-y <Y>] [-d <DESTINATION PATH>] [-n] [-v]

# DESCRIPTION
 
screen-generator generates screen configuration files by only providing window commands. screen-generator automatically find the number of windows needed given the command chains.

The number of windows can also be specifed in alone or in conjunction with a command chain. It can for instance generate any screenrc defining a grid of <X> lines and <Y> columns.

Window commands can be chose by using "-c" flag with a set of commands separated by commas (e.g "bash;watch ls;watch lsblk;tcpdum") or by newlines. 

If no command chain is given, window commands become the default shell $SHELL.
  
The path of the new screen configuration file can be specified using "-d <DESTINATION PATH>". If the flag -d is not set, the location becomes /tmp/screenrc-<X>x<Y>

The Nth command in the chain gives the command of the Nth window counting from top lef to bottom right.

The number of windows is automatically guessed depending on the command chain but can also be set using -x and -y flags.

If no command chain nor screen size is given, default values of 1 and 2 are taken (given by variables DEFAULT_NUMBER_OF_LINES and DEFAULT_NUMBER_OF_COLUMNS. 

Screen can be prevented from being lauched by adding the option -n.

The option -t allow to print the newly generated screen on the terminal.

# OPTIONS

-c <COMMAND CHAIN>            Specify window command from a set of commands <COMMAND CHAIN> separated by commas (e.g "bash;watch ls;watch lsblk") or by a newlines. 

-x <X>                        Specify the number of lines. This will overwrite the value guessed if command chain is given.

-y <Y>                        Specify the number of columns. This will overwrite the value guessed if command chain is given.

-d <DESTINATION PATH>         Specify the destination of the generated configuration file (/tmp/.screenrc-<X>x<Y>-<ADJUSTED COMMAND CHAIN STRING> if not mentioned )

-n                            Prevent from executing screen. It only generate screen configuration file ( given by <DESTINATION PATH> or /tmp/.screenrc-<X>x<Y> )

-o <OPTION CHAIN>             Add lines to the screen configuration file. <OPTION CHAIN> is a chain in the format "<OPTION_1>;...;<OPTION_N>". 

-t                            Print the newly generated screen configuration file on terminal and prevent screen from running.

-h|--help                     Show help

-v                            Activate debug mode. 

# EXAMPLES

1) screen-generator -c "watch ls /tmp;lsblk;tcpdump"   
 
   Open a new screen composed of a grid of 2 lines and 2 colums

2) screen-generator -n -x 5 -y 3 -d $HOME/.screenrc

   Replace the default configuration file of screen by a newly generated one decribing a 5x3 grid with $SHELL as window command.

# FILES

/tmp/screenrc-<X>x<Y>[-<COMMAND-CHAIN>]

# VARIABLES

DEFAULT_NUMBER_OF_COMMANDS in ./screen-generator     
DEFAULT_NUMBER_OF_LINES in ./screen-generator     
DEFAULT_SHORTCUTS in ./screen-generator
DEFAULT_OPTIONS in ./screen-generator

# AUTHOR

Any suggestions, help proposal or remarks are welcome at jean.yvan.tissot[at]gmail.com

# VERSION

screen-generator v0.3.1

