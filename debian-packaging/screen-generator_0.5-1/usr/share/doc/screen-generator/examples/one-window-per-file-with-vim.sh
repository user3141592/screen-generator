#!/bin/bash
#
# Use screen-generator to start a screen composed of as much windows as the number of file in the current directory, each running vim with a different file.

screen-generator 'vim +'
