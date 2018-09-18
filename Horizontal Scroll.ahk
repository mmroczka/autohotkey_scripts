#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Singleinstance Force
#IfWinActive ahk_class XLMAIN
+WheelUp::
SetScrollLockState, On
SendInput {Left}
SetScrollLockState, Off
Return
+WheelDown::
SetScrollLockState, On
SendInput {Right}
SetScrollLockState, Off
Return

; Everything except Excel.
#IfWinNotActive ahk_class XLMAIN
+WheelUp::  ; Scroll left.
ControlGetFocus, fcontrol, A
Loop 4  ; <-- Increase this value to scroll faster.
    SendMessage, 0x114, 0, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 0 after it is SB_LINELEFT.
return

+WheelDown::  ; Scroll right.
ControlGetFocus, fcontrol, A
Loop 4  ; <-- Increase this value to scroll faster.
    SendMessage, 0x114, 1, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 1 after it is SB_LINERIGHT.
return
#IfWinActive
