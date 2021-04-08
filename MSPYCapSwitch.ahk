CapsLock::
	KeyWait,% A_ThisHotkey,T0.5
	If ErrorLevel {
		Send {Blind}{CapsLock}
	}
	Else {
		Send ^{Space}
	}
	KeyWait,% A_ThisHotkey
Return
