# bashes
bash includables for every-day use.

You can include func/_main to use in your scripts
or use the wrapper I wrote (`s`)


# wrapper (s)
`s` functions as a sudo wrapper. Will either sudo args or spawn a root shell.

Got fairly sick of mistyping `sudo [su -]`
`sudo` is called as
```bash
/usr/bin/sudo "${@}"
```

`usage: s [cmd [arg1 [arg2 [..]]]]`
