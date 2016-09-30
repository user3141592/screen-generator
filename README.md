# # SETUP
# 
# $ sudo apt-get install screen
# $ source screen-generator 
# 
# To have an insight of screen-generator, try running
#
#  screen-generator -c "watch -c 'ps -e -o cmd | tac';watch df ;tcpdump;top"   
#
# # USAGE
# 
# screen-generator [-c <COMMAND CHAIN>] [-x <X>] [-y <Y>] [-d <DESTINATION PATH>] [-n] [-v]
# 
# # DESCRIPTION
#  
# screen-generator start screen and generates screenrcs by only providing window commands or the number of windows. It can for instance generate any screenrc defining a grid of <X> lines and <Y> columns.
#
# Window commands can be chose by using "-c" flag with a set of commands separated by commas (e.g "bash;watch ls;watch lsblk;tcpdump") or by newlines. 
#   
# The Nth command in the chain gives the command of the Nth window counting from top lef to bottom right.
#
# The path of the new screen configuration file can be specified using "-d <DESTINATION PATH>". If the flag -d is not set, the location becomes /tmp/screenrc-<X>x<Y>.
#
# If <X or/and <Y> are not specified, default values of 2 and 1. 
#
# Screen can be prevented from being lauched by adding the option -n.
#
# # OPTIONS
#
# -c <COMMAND CHAIN>            Specify window command from a set of commands <COMMAND CHAIN> separated by commas (e.g "bash;watch ls;watch lsblk") or by a newlines.       
#
# -x <X>                        Specify the number of lines
#
# -y <Y>                        Specify the number of columns
#
# -d <DESTINATION PATH>         Specify the destination of the generated configuration file (/tmp/.screenrc-<X>x<Y> if not mentioned )
#
# -n                            Prevent from executing screen. It only generate screen configuration file ( given by <DESTINATION PATH> or /tmp/.screenrc-<X>x<Y> )
#
# -o <OPTION CHAIN>             Add lines to the screen configuration file. <OPTION CHAIN> is a chain in the format "<OPTION_1>;...;<OPTION_N>". 
#
# -v                            Activate debug mode 
#
# # EXAMPLES
#
# 1) screen-generator -c "watch ls /tmp;watch lsblk;tcpdump"   
#  
#    Open a new screen composed of a grid of 3 lines and 2 colums
#
# 2) screen-generator -n 5 3 -d $HOME/.screenrc 
#
#    Replace the default configuration file of screen by a newly generated one decribing a 5x3 grid.
#
# # FILES
# 
# /tmp/screenrc-<X>x<Y>[-<COMMAND-CHAIN>]
#
# # VARIABLES
#
# DEFAULT_NUMBER_OF_COMMANDS in ./screen-generator     
# DEFAULT_NUMBER_OF_LINES in ./screen-generator     
# DEFAULT_SHORTCUTS in ./screen-generator
# DEFAULT_OPTIONS in ./screen-generator
#
# # AUTHOR
#
# Any suggestions, help proposal or remarks are welcome at jean.yvan.tissot[at]gmail.com
#
# # VERSION
#
# screen-generator v0.3.1
#
# FUTURE DEVELOPPEMENT
#
# screen-generator V0.3.3      Generate more complex screenrcs (e.g 1+2x2 for 5 windows)
                               Optimized window configurations in the screen depending on the command chain
