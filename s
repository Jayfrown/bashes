#!/bin/bash

##
#  s
#  sudo wrapper to speed things up
  
#  Copyright 2016 Jeroen <Jayfrown @ github.com>

#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.


# include functions
. _func


# main()
#if [ -t ]; then # FIXME

	# stdin/stdout -> interactive terminal
	# check arg(s) passed
	if [[ ${#} -gt "0" ]]; then

		# arg(s) passed, assume sudo behavior
		run_sudo "${@}"
	else

		# no args, assume su behavior
		root_shell
	fi
#else

	# FIXME: -t is true even when piped !!
	
	# no interactive terminal, assume piped
	# wrap around sudo tee.
	
	# [[ $1 = -a ]] && append to file(s)
#	if [[ ${1} -eq "-a" ]]; then
#		for appendFile in ${@}; do
			
			# file must exist to append
#			if [[ -f ${appendFile} ]]; then
#				append_file ${appendFile}
#			else
#				echo "$(red ${prog}): file must exist to append: $(magenta ${1})"
#			fi
#		done
		
#	else
	
	# [[ $1 != -a ]] && write to file(s) 
#		for writeFile in ${@}; do
#			write_file ${writeFile}
#		done
#	fi

	
#	exit 0;
#fi
