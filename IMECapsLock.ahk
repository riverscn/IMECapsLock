Menu, Tray, Icon, tray.ico
Menu, Tray, noStandard
Menu, Tray, Add, Start with Windows, ToggleStartup
Menu, Tray, Add, Exit, Tray_Exit

AppName := SubStr(A_ScriptName, 1, -4)

IfExist, %A_Startup%\%AppName%.lnk
{
    Menu, Tray, Check, Start with Windows
}
    else {
    Menu, Tray, Uncheck, Start with Windows
}

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

Tray_Exit:
    exitApp
Return
    
ToggleStartup:
    IfExist, %A_Startup%\%AppName%.lnk
    {
        FileDelete, %A_Startup%\%AppName%.lnk
        Menu, Tray, Uncheck, Start with Windows
    }
        else {
        FileCreateShortcut, "%A_ScriptFullPath%"
        , %A_Startup%\%AppName%.lnk
        , %A_ScriptDir%
        Menu, Tray, Check, Start with Windows
    }
Return