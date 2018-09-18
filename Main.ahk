#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;ICON TO DISPLAY IN SYSTEM TRAY
Menu, Tray, Icon, %A_ScriptDir%\main.ico, 0, 1

;THINGS NO LONGER NEEDED TO BE INCLUDED
;#include googleSearchSelectedText.ahk
;#include forgettingAlgorithm.ahk
;#include TurnWifiBackOn.ahk
;#include CapsLock Arrow Navigation.ahk
;#include TrayIt.ahk
;#include QuickSendGmail.ahk
;#include BackspaceUpWindowsExplorer.ahk
;#include SpreedHighlightedText.ahk

;INCLUDED FILES
#include AutoCorrect.ahk
#include OneNoteKeyboardShortcuts.ahk
#include MLOKeyboardShortcuts.ahk
#include Horizontal Scroll.ahk
#include ControlBackspaceRemapInMLOAndNotepad.ahk
#include WorkShortcuts.ahk

;--------------EMAIL--------------;
::mmg::michael.mroczka@gmail.com
::mmge::michael.mroczka@ge.com
::m4m::mail4michael@themroczkas.com
::ilr::iloverachelh@gmail.com
::habitt::habittransformation@gmail.com
::scraft::michael.mroczka@apps.schoolcraft.edu
::dancer.::dancer.rache93@gmail.com
::umich::mmroczka@umich.edu

;-------------SHORTCUTS------------;
::_bullet::•
::_null::Ø
::_--::—
::_umd::University of Michigan - Dearborn
::mmr::mmroczka
::Rnd::R&D: 
::Susinctly::Succinctly
::susinctly::succinctly
::_m::-Michael Mroczka
::_shrug::¯\_(ツ)_/¯

;------------- GE -----------------;
::_work_phone::(513) 371-4598
::_mobile::(513) 371-4598
::_webex::WebEx Short-Link: sc.ge.com/*mroczka`rWebEx Full-Url: https://emeetings.webex.com/mw3100/mywebex/cmr/cmr.do?siteurl=emeetings&AT=meet&username=pr212569002`rConference Code: 118 627 2`rMeeting Number: 825 958 889
::_leader_pin::403 969 9#
::_leaderpin::403 969 9#
::_instructions::Call this number --> (866) 546-4138 `rEnter your conference code --> 118 627 2 #`rEnter your leader pin --> 403 969 9#`r
::_webexnum::(866) 546-4138
::_vish::Bharath, Visvesvaran

;------------- GE ROOMS -----------;
::_bebc_room::~AVIATION BEBC

::_small_room::~AVIATION BEBC 1 M11 Cintas Center Huddle - 2; ~AVIATION BEBC 1 M11 Union Termnial - 2; ~AVIATION BEBC 1 P6 Purple People Bridge - 3
::_medium_room::~AVIATION BEBC 1 M11 Taft Museum Of Art - 5; ~AVIATION BEBC 1 M12 Cincinnati Gardens - 5; ~AVIATION BEBC 1 M12 Spring Grove - 5; ~AVIATION BEBC 1 M13 Hyde Park Square - 5; ~AVIATION BEBC 1 M4 Newport Aquarium - 5; ~AVIATION BEBC 1 P6 Playhouse In The Park - 5; ~AVIATION BEBC 1 P8 Music Hall - 5
::_large_room::~AVIATION BEBC 1 M10 Cincinnati Zoo - 7; ~AVIATION BEBC 1 M10 Esquire Theatre - 7; ~AVIATION BEBC 1 P6 Freedom Center - 9; ~AVIATION BEBC 1 Q5 Nippert Stadium - 7; ~AVIATION BEBC 1 Q6 Great American Ballpark - 7; ~AVIATION BEBC 1 Q8 Paul Brown Stadium - 7; ~AVIATION BEBC 1 Q9 Findlay Market - 7; ~AVIATION BEBC 1 Q7 Roebling Bridge - 9

::_room_2::~AVIATION BEBC 1 M11 Cintas Center Huddle - 2; ~AVIATION BEBC 1 M11 Union Termnial - 2
::_room_3::~AVIATION BEBC 1 P6 Purple People Bridge - 3
::_room_5::~AVIATION BEBC 1 M11 Taft Museum Of Art - 5; ~AVIATION BEBC 1 M12 Cincinnati Gardens - 5; ~AVIATION BEBC 1 M12 Spring Grove - 5; ~AVIATION BEBC 1 M13 Hyde Park Square - 5; ~AVIATION BEBC 1 M4 Newport Aquarium - 5; ~AVIATION BEBC 1 P6 Playhouse In The Park - 5; ~AVIATION BEBC 1 P8 Music Hall - 5; ~AVIATION BEBC 1 P9 Krohns Conservatory - 5; ~AVIATION BEBC 1 P9 Fountain Square - 5
::_room_7::~AVIATION BEBC 1 M10 Cincinnati Zoo - 7; ~AVIATION BEBC 1 M10 Esquire Theatre - 7; ~AVIATION BEBC 1 M9 Cincinnatus - 7; ~AVIATION BEBC 1 Q5 Nippert Stadium - 7; ~AVIATION BEBC 1 Q6 Great American Ballpark - 7; ~AVIATION BEBC 1 Q8 Paul Brown Stadium - 7; ~AVIATION BEBC 1 Q9 Findlay Market - 7


;-------------RELOAD---------------;
^!r::
	MsgBox, 4,, Sure you want to reload?
	IfMsgBox, Yes
	Reload
	Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
	MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
	IfMsgBox, Yes, Edit
return
::_reason::Full stack development working under Josh Falter to improve Portal search functionality
::_start_mongo::"C:\Program Files\MongoDB\Server\3.4\bin\mongod.exe"
::_aws54::10.230.209.54
::_aws109::10.230.209.109