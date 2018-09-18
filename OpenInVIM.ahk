#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^+!v::
	Clipboard := "" ; Clear the clipboard. Required for ClipWait.
	Send, ^c
	ClipWait ;waits for the clipboard to have content
	Sleep 500
	IfWinNotExist Vim
	{
		Run, C:\Users\212569002\Vim\vim72\gvim.exe , ,max
		Sleep 1000
	}
	WinActivate Vim
	Send `:enew{Enter}
	Sleep 500
	Send, {Esc}i
	Sleep 500
	Send %clipboard%
	Send, {Esc}
Return