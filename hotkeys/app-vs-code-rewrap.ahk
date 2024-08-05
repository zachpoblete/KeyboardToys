; Rewrap is a VS Code extension that hard word wraps text at a given column:
; https://marketplace.visualstudio.com/items?itemName=stkb.rewrap

; These hotkeys allow us to easily wrap at a set column.

#HotIf WinActive("ahk_exe Code.exe")
; Note: Do not run these hotkeys consecutively too fast; you have to wait for
; the previous Rewrap operation to finish first.
+!`:: Rewrap(80)
+!1:: Rewrap(84)
+!2:: Rewrap(88)
+!3:: Rewrap(92)
+!4:: Rewrap(96)
+!5:: Rewrap(100)

Rewrap(column) {
    ; Trigger the `Rewrap/Unwrap Text at Column...` column command.
    Send("+!q")

    ; Wait for the input field.
    Sleep(50)

    ; Wrap at the given column.
    Send(column . "{Enter}")

    ; Save the wrapping.
    Send("^s")
}
#HotIf
