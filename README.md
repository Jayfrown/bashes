# bashes
Collection of bash scripts and includable functions for every-day use
Place files under ~/bin (and make sure to include this in your $PATH)



# sudo wrapper (s)
's' functions as a sudo wrapper.
Will either sudo args or spawn a root shell.

Got fairly sick of mistyping sudo [su -]
Personally, I just call it 's' and stick it under ~/bin
Quick, and easy to remember. Feel free to do whatever suits your needs.
Sudo is called as >/usr/bin/sudo "${@}"

> usage: s [cmd [arg1 [arg2 [..]]]]