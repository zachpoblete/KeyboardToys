; Close the persistent notification banner. (I've manually set the notification
; banner to be persistent to not miss anything.)
#w:: {
    originalWin := WinExist("A")

    if not WinExist("New notification ahk_class Windows.UI.Core.CoreWindow"
        . " ahk_exe ShellExperienceHost.exe")
    {
        return
    }
    WinActivate()

    ; Focus the close button.
    Send("+{Tab}")

    ; Close.
    Send("{Space}")

    ; Wait a bit before activating the original window because, otherwise, the
    ; notification wouldn't be closed for some reason.
    Sleep(50)
    WinActivate(originalWin)
}
