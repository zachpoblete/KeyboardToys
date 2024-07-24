; In some windows and controls, ^Backspace doesn't delete the previous word like
; it usually does because it produces a control character. This script works
; around that to achieve the same effect.

class UI_CtrlBackspaceFails {
    static hasFocus() {
        return Boolean(
            ControlClassNnFocused('A', '^Edit\d+$', true)
            or ControlClassNnFocused('ahk_exe AcroRd32.exe', '^AVL_AVView', true)
            or WinActive('ahk_exe mmc.exe')
        )
    }

    static deletePriorWord() {
        if GetSelected() {
            Send('{Delete}')
        } else {
            Send('{Ctrl Down}{Shift Down}{Left}')

            ; Wait the tiniest bit. For some reason, this makes the hotkey more consistent
            ; in Premiere Pro.
            Sleep(0)

            ; Release the modifiers first then finally send Delete. For some reason, Delete
            ; has to come last; otherwise, Photoshop [sic] (did I mean Premiere Pro?)
            ; doesn't delete the word. This is despite ^+Delete [sic] (did I mean
            ; ^+{Left}{Delete}?) deleting the previous word as expected if I do that
            ; manually.
            Send('{Shift Up}{Ctrl Up}{Delete}')
        }
    }
}
