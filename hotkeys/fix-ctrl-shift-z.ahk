#Include ahk-utils
#Include default-settings.ahk
#Include can-redo-with-ctrl-y.ahk

#HotIf CanRedoWithCtrlY()
$^+z:: Send('^y')
$^y::  Send('^+z')
#HotIf
