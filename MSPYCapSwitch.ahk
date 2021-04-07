~CapsLock::
    duration := 0
    If (GetKeyState("CapsLock", "p"))
    {
        start := A_TickCount
        While (GetKeyState("CapsLock"))
            Sleep, 1
        duration := A_TickCount - start
    }
    If (duration < 200) ;Change this value as needed
        {
            Send {Blind}^{Space}
            Send {Blind}{CapsLock}
        }
    Return
