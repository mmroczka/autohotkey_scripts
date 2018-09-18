#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode 2
#if (WinActive("ahk_class TfrmMyLifeMain") or WinActive("Notepad") or WinActive("ahk_class TfrmQuickAddMLOTask"))

^BS::
    Send, {Ctrl Down}{Shift Down}{Left}
    Send, {Ctrl Up}{Shift Up}
    Send, {Backspace}
Return
#IfWinActive
