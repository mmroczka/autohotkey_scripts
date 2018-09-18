#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; This will select Insert->Record Audio in OneNote
SetTitleMatchMode 2

#IfWinActive ahk_class Framework::CFrame
;; if you're in OneNote and you press Control + DownArrow, then open paragraph
^Down::
    Send !+{+}
return
;; if you're in OneNote and you press Control + UpArrow, then close paragraph
^Up::
    Send !+-
return

F1::
	Send !n,
	Send t
	Send {Enter}
Return

;F2::
;	Send !n,
;	Send t
;	Send {Enter}
;	Send !n,
;	Send c
;
;Return
#IfWinActive
