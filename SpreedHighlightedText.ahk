#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!^+r::
    ; Copy highlighted text to clipboard
    Clipsaved := clipboardall
    Clipboard =
    Send ^c
    Clipwait

    ; If chrome already exists, switch to it and launch spreeder bookmark, otherwise open chrome and wait for it to load 3 sec
    
    If WinExist("ahk_class Chrome_WidgetWin_1")
    {
        WinActivate
        Run, chrome.exe chrome-extension://ipikiaejjblmdopojhpejjmbedhlibno/spreedPaste.html
        Sleep, 500
    }
    Else
    {   
        Run, chrome.exe chrome-extension://ipikiaejjblmdopojhpejjmbedhlibno/spreedPaste.html
        Sleep, 5000
    }

    ; Tab three times till you hit the area to paste text in the bookmark
    Send, {Tab}
    Sleep, 500
    Send, {Tab}
    Send, ^v
    
    ; Launch spreeder window with built in spreeder hotkey (Shift + Enter)
    Send, +{Enter}