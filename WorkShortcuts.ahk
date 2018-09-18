#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;; Show Cisco Jabber windows called "Conversations" if not visible
^+!J::
IfWinExist, Conversations
{
 WinHide
}
Else
{
 WinShow, Conversations
 WinActivate, Conversations
}
return


;; Show Pushbullet main window called "Pushbullet Pro" if not visible
^+!P::
IfWinExist, Pushbullet
{
 WinHide
}
Else
{
 WinShow, Pushbullet
 WinActivate, Pushbullet
}
return


;; Show calculator
!^+C::
IfWinExist, SpeedCrunch
{
 WinHide
}
Else
{
 WinShow, SpeedCrunch
 WinActivate, SpeedCrunch
}
return

;; Show Slack
!^+o::
IfWinExist, Slack
{
 WinHide
}
Else
{
 WinShow, Slack
 WinActivate, Slack
}
return

; Open Blank Vim
!^+v::
	Run, C:\Users\212569002\Vim\vim72\gvim.exe , ,max
	Sleep 500	
	Send `:enew{Enter}
	;Sleep 500
	;Send, {Esc}i
Return

; Copy text from VIM, switch to SQL query window in pgAdmin, clear current contents of window, then paste and execute the query
!^+l::
	Clipboard := "" ; Clear the clipboard. Required for ClipWait.
	Send, "*y
	ClipWait ;waits for the clipboard to have content
	Sleep 500
	IfWinExist Query
	{
		WinActivate Query
		Sleep 500
		; consider clicking center of the screen?
		Send ^a
		Sleep 500
		Send ^v
		Sleep 500
		Send {F5}
	}	