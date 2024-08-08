#Include ahk-utils
#Include default-settings.ahk

#HotIf WinActive('ahk_exe msedge.exe')
; Disable because destructive/annoying and easily mispressed.
^+Delete::  ; Clears browsing data
^r::        ; Reloads page; the alternative I use is F5
{
    return
}
#HotIf
