# crond usage
# crontab -u

SHELL=/bin/bash
PATH=/bin:/usr/bin:~/bin
BASH_ENV=/home/<user>/.bash_env
MAILTO=<user>+crontab@gmail.com

# * (entire range of values)
# list (1,2) or range (1-3)
# / (interval) e.g. hour: 0-23/2 (every two hours)		 
# minute (0-59)
# |	hour (0-23)
# |	|	day of the month (1-31)
# |	|	|	month of the year (jan-dec or 1-12)
# |	|	|	|	day of the week (mon-sun or 1-7)
# |	|	|	|	|	commnd
# |	|	|	|	|	|
  0	23	*	*	*	crontab -l > ~/bin/crontab.txt 2> /dev/null

# Notes
# $SHELL	| override default `crond` shell (`/bin/sh`)
# $PATH		| control available commands
# $BASH_ENV	| typically a link to a `~/.bashrc`
# $MAILTO	| use gmails plus addressing to scope messages

