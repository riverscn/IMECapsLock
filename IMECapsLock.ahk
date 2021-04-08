Menu, Tray, Icon, tray.ico

CapsLock::
    KeyWait, % A_ThisHotkey, T0.5
    if ErrorLevel {
        Send {Blind}{CapsLock}
    }
    Else {
        Send ^{Space}
    }
    KeyWait, % A_ThisHotkey
Return
