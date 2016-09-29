# # SETUP
# 
# source screenrc-generator
# 
# # USAGE
# 
# screenrc-generator [-n] <X> [<Y>] [-d <PATH>] [-c <FILE WITH COMMAND LIST>
# 
# # DESCRIPTION
#  
# screenrc-generator opens a screen session decribed by a generated screen configuration file defining a grid composed of <X> lines and <Y> columns.
#
# The path of the new screen configuration file can be specified using "-d <PATH>". If the flag -d is not set, the location becomes /tmp/screenrc-<X>x<Y>
#
# If <X> or/and <Y> are not specified, defualt values of 2 and 1 are set and if only one number is given, then <X> is set and <Y> takes the default value of 2.
#
# Screen can be prevented from being lauched by adding the option -n.
#
# # EXAMPLES
#
# 1) screenrc-generator 3
#  
#    Open a new screen composed of a grid of 3 lines and 2 colums
#
# 2) screenrc-generator -n 5 3 -d $HOME/.screenrc
#
#    Replace the default configuration file of screen by a newly generated one decribing a 5x3 grid.
#
# # FILES
# 
# /tmp/screenrc-XxY
# $HOME/.screen-xy.conf
#
# # OPTION
#
# -n    Prevent from executing screen. It only generate screen configuration file ( given by <PATH> or /tmp/.screenrc-<X>x<Y> )

# -d <PATH>     Specify the destination of the generated configuration file (/tmp/.screenrc-<X>x<Y> if not mentioned )
#
# # VARIABLES
#
# DEFAULT_NUMBER_OF_LINES in ./screenrc-generator     
# DEFAULT_NUMBER_OF_COLUMNS in ./screenrc-generator
#
# # AUTHOR
#
# Any suggestions or remark can be sent to jean.yvan.tissot[at]gmail.com
#
# # VERSION
#
# screenrc-generator v0.4
#
#
# # FUTURE DEVELOPPEMENT
#
# v0.5  Set windows commands from a file, add shortcuts
# v0.6  Generate more complex screenrcs than grids
