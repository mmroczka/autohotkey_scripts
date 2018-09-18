#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

~RAlt & WheelDown::  ; Scroll right.
ControlGetFocus, fcontrol, A
MouseGetPos, , , id, control

Loop 1  ; <-- Increase this value to scroll faster.
{
    SendMessage, 0x114, 1, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 1 after it is SB_LINELEFT.
    SendMessage, 0x114, 1, 0, %control%, A  ; 0x114 is WM_HSCROLL and the 1 after it is SB_LINELEFT.
}
return