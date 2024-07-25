#Include lib
#Include can-redo-with-ctrl-y.ahk

#HotIf CanRedoWithCtrlY()
$^+z:: Send('^y')
$^y::  Send('^+z')
#HotIf
