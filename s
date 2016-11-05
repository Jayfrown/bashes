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


# easy colors
Cdflt="\e[39m"
Cblue="\e[34m"
Cred="\e[91m"
Cmagenta="\e[35m"

# basename
basename="${0##*/}"

# pretty error messages
err() {
	oldExit="${?}"
	errDesc="function ${Cred}${FUNCNAME[$i+1]}${Cdflt} at line ${Cred}${BASH_LINENO[$i]}${Cdflt}"
	echo -e "${Cred}${basename}:${Cdflt} ${errDesc}: ${Cmagenta}${*}${Cdflt}"
	logger -p user.error -t "${basename}" "${errDesc} ${*}"
	
	return ${oldExit}
}

# run with sudo
run_sudo() {
	/usr/bin/sudo "${@}"    || err "sudo returned non-zero exit code: $?";
	return ${?}
}

# spawn a root shell
root_shell() {
	/usr/bin/sudo "-i"      || err "sudo returned non-zero exit code: $?";
	return ${?}
}




# main()
if [ -t ]; then

	# stdin/stdout -> interactive terminal
	# check arguments passed
	if [[ ${#} -gt "0" ]]; then

		# arg(s) passed, assume sudo behavior
		run_sudo "${@}"
	else

		# no args, assume su behavior
		root_shell
	fi
else

	# no interactive terminal, no behavior (yet?)
	exit 0;
fi
