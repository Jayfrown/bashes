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




# container over ramdisk (cor)
'cor' extracts a gentoo rootfs on tmpfs and leverages overlayfs to spawn multiple containers based on that same physical base.
next to an implied speedup, this allows instant system upgrades across thousands of nodes: update rootfs in tmpfs, reboot containers, done.

changes respective to the [read-only] lower base-system will be stored in the upper directory, which should be stored on non-volatile memory. 

> usage: cr [rebuild-ramdisk] [containername]