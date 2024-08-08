; For information on what Vimium C is:
; https://github.com/gdh1995/vimium-c

#HotIf WinActive('ahk_exe msedge.exe')
^;::     RunVimiumcCommand("LinkHints.activate")
^+;::    RunVimiumcCommand("LinkHints.activateEdit")

^!r::    RunVimiumcCommand("reopenTab")
^!e::    RunVimiumcCommand("removeRightTab")

^+PgUp:: RunVimiumcCommand("moveTabLeft")
^+PgDn:: RunVimiumcCommand("moveTabRight")

RunVimiumcCommand(command) {
    static COMMAND_TO_ACTIVATION_KEYS_MAP := Map(
        "LinkHints.activate",              "{F13}",
        "LinkHints.activateEdit",          "{F14}",
        "LinkHints.activateHover",         "{F15}",
        "LinkHints.activateCopyLinkUrl",   "{F16}",
        "LinkHints.activateCopyLinkText",  "{F17}",
        "reopenTab",                       "{F18}",
        "removeRightTab",                  "{F19}",
        "moveTabLeft",                     "{F20}",
        "moveTabRight",                   "+{F13}",
    )

    activationKeys := COMMAND_TO_ACTIVATION_KEYS_MAP[command]
    Send(activationKeys)
}
#HotIf
