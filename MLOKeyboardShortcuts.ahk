#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#IfWinActive ahk_class TfrmMyLifeMain
^!p::
	Send, {F2} ;switch to properties pane (default closes project window)
	Send, !5 ;open project window back up
	Send, +{Space} ;checkmark the 'is project' checkbox
	Send, {F2} ; switch back to the task view
Return

^!n::
    Send, !1
Return

#IfWinActive
