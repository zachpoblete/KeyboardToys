; The Hyper key is a key activated by Win + Ctrl + Shift + Alt (or any
; permutation of that). On its own, it launches the Office app and, when used
; with an alpha key, opens other Office apps. For example, Win + Ctrl + Shift
; + Alt + X opens Excel. I've disabled the Hyper key because I don't use it and
; I've mispressed it in the past.

#^+Alt::   MaskWithNoMapping()
#^!Shift:: MaskWithNoMapping()
#+!Ctrl::  MaskWithNoMapping()
^+!LWin::  MaskWithNoMapping()
^+!RWin::  MaskWithNoMapping()

#^+!a:: return
#^+!b:: return
#^+!c:: return
#^+!e:: return
#^+!f:: return
#^+!g:: return
#^+!h:: return
#^+!i:: return
#^+!j:: return
#^+!k:: return
#^+!l:: return
#^+!m:: return
#^+!n:: return
#^+!o:: return
#^+!p:: return
#^+!q:: return
#^+!r:: return
#^+!s:: return
#^+!t:: return
#^+!u:: return
#^+!v:: return
#^+!w:: return
#^+!x:: return
#^+!y:: return
#^+!z:: return

MaskWithNoMapping() {
    Send("{Blind}{vkFF}")
}
