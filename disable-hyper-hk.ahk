; The Hyper key is a key activated by Win + Ctrl + Shift + Alt (or any
; permutation of that). On its own, it launches the Office app and, when used
; with an alpha key, opens other Office apps. For example, Win + Ctrl + Shift
; + Alt + X opens Excel. I've disabled the Hyper key because I don't use it and
; have mispressed it in the past.

DisableHyperPermutations()
DisableHyperAlphas()

DisableHyperPermutations() {
    hyperPermutations := [
        "#^+Alt",
        "#^!Shift",
        "#+!Ctrl",
        "^+!LWin",
        "^+!RWin",
    ]
    for hyper in hyperPermutations {
        Hotkey(hyper, mask)
    }

    mask(thisHotkey) {
        NO_MAPPING := "vkFF"
        Send("{Blind}{" . NO_MAPPING . "}")
    }
}

DisableHyperAlphas() {
    alphasString := "abcefghijklmnopqrstuvwxyz"
    alphas := StrSplit(alphasString)

    hyper := "#^+!"
    for alpha in alphas {
        Hotkey(hyper . alpha, doNothing)
    }

    doNothing(thisHotkey) {
        return
    }
}
