SendInstantRaw(text) {
    savedClipboard := ClipboardAll()
    A_Clipboard := text
    ClipWait(0.05)
    Send('{Ctrl Down}v{Ctrl Up}')
            ; See GetSelected for why I chose {Ctrl Down}v{Ctrl Up} over ^v
    SetTimer(() => A_Clipboard := savedClipboard, -100)
            ; Fsr, Sleep(50) is too fast.
}
