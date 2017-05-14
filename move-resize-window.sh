#!/bin/bash

#Simple script to enable single-command window repositioning and resizing
#Put this in your /usr/local/bin to run this from the command line
#Written by @qinghao1

if ! type "xdotool" > /dev/null; then
  echo "This program needs xdotool to work."
  echo "You can install xdotool with the following command:"
  echo -e "\e[3msudo apt-get install xdotool\e[0m"
  exit 1
else
	case $1 in
		top)
			xdotool getactivewindow windowmove 0 0
			xdotool getactivewindow windowsize 100% 50%
		;;
		bottom)
			xdotool getactivewindow windowmove 0 50%
			xdotool getactivewindow windowsize 100% 50%
		;;
		left)
			xdotool getactivewindow windowmove 0 0
			xdotool getactivewindow windowsize 50% 100%
		;;
		right)
			xdotool getactivewindow windowmove 50% 0
			xdotool getactivewindow windowsize 50% 100%
		;;
		top-left)
			xdotool getactivewindow windowmove 0 0
			xdotool getactivewindow windowsize 50% 50%
		;;
		top-right)
			xdotool getactivewindow windowmove 50% 0
			xdotool getactivewindow windowsize 50% 50%
		;;
		bottom-left)
			xdotool getactivewindow windowmove 0 50%
			xdotool getactivewindow windowsize 50% 50%
		;;
		bottom-right)
			xdotool getactivewindow windowmove 50% 50%
			xdotool getactivewindow windowsize 50% 50%
		;;
		*)
			echo "Usage: $0 <top|bottom|left|right|top-left|top-right|bottom-left|bottom-right>"
			exit 1
		;;
	esac
fi
exit 0