#!/bin/sed -f

## note
# [0m  reset
# [1m  bold
# [3m  italic
# [4m  underline
# [5m  blink
# [30m black
# [31m red
# [32m green
# [33m yellow
# [34m blue
# [35m magenta
# [36m cyan
# [37m white

s/\(^\[[^(w|e)]*\]\)/\x1b[1m\x1b[36m\1\x1b[0m/
s/\(PHP Notice:\)/\x1b[1m\x1b[34m\1\x1b[0m/
s/\(PHP Warning:\)/\x1b[1m\x1b[33m\1\x1b[0m/
s/\(PHP.*error:\)/\x1b[1m\x1b[31m\1\x1b[0m/
