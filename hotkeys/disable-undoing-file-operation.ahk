#Include ahk-utils
#Include control-class-nn-focused.ahk

; Disable ^z for undoing changes to files because it can delete files without
; sending them to the Recycle Bin. If you really need to undo a file operation,
; click the three horizontal dots in the toolbar and hover the cursor over
; "Undo". A tooltip will appear showing what will happen if you click "Undo".

$^z:: {
    if MightUndoFileOperation() {
        return
    }

    Send('^z')
}

MightUndoFileOperation() {
    WinExist('A')

    winProcessName := WinGetProcessName()
    if winProcessName != 'explorer.exe' {
        return
    }

    switch WinGetClass() {
    case not "WorkerW",       ; WorkerW is the Desktop
        not "CabinetWClass":  ; CabinetWClass is File Explorer
        return
    }

    focusedControlClassNn := ControlClassNnFocused()

    ; (If we're renaming a file.)
    if focusedControlClassNn ~= '^Edit\d+$' {
        return
    }

    ; (If we're in the address bar or search box.)
    if focusedControlClassNn = "Microsoft.UI.Content.DesktopChildSiteBridge1" {
        return
    }

    return true
}
