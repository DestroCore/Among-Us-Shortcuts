msgbox, 4096, Among Us Shortcuts, Have fun with the little treats :D. Refer to github page for shortcuts help, 2

toggle = 0

#MaxThreadsPerHotkey 2
Gui SK:New
Gui +AlwaysOnTop -Caption +Disabled
Gui, Font, cRed s16, Segoe UI Black
Gui, Color, 99BBFF
Gui +LastFound
WinSet, TransColor, 99BBFF
Gui, Add, Text,, Seeker Kill Active
Gui SK:Hide

; Seeker Kill
^F8::
Toggle := !Toggle

If Toggle
{
    Gui SK:Show, X 1650 Y 60 NoActivate
} else {
    Gui SK:Hide
}

While Toggle
{
    Send, q
    sleep 100
}
return


;Clicker Kill
F8::
Clicker := !Clicker
If Clicker
{
    Gui CK:New
    Gui +AlwaysOnTop -Caption +Disabled
    Gui, Font, cRed s16, Segoe UI Black
    Gui, Color, 99BBFF
    Gui +LastFound
    WinSet, TransColor, 99BBFF
    Gui, Add, Text,, Clicker Kill Active
    Gui, Show, X 1630 Y 40 NoActivate
} else {
    Gui CK:Destroy
}

While Clicker
{
    MouseMove, 1595, 943,1
    Send, q
    sleep 50
    MouseClick, left, 1595, 943,1
    sleep 50
}
return


;Auto Public Private
F6::
AutoClick := !AutoClick
If AutoClick
{
    Gui AC:New
    Gui +AlwaysOnTop -Caption +Disabled
    Gui, Font, cRed s16, Segoe UI Black
    Gui, Color, 99BBFF
    Gui +LastFound
    WinSet, TransColor, 99BBFF
    Gui, Add, Text,, AutoClick Active
    Gui, Show, X 1630 Y 100 NoActivate
} else {
    Gui AC:Destroy
}

While AutoClick
{
    MouseClick, left, 689, 985,,0
}
return



;Bonus

:*:=)::=) It's kill or be killed after all



#IfWinActive ahk_exe Among Us.exe

; Settings Menu
+Esc::
MouseClick, left, 1849, 61,,0
return


; Leave Game
^Q::
MouseClick, left, 1849, 61,,0
Sleep, 100
MouseClick, left, 957, 874,,0
return


;Chat
^T::
MouseClick, left, 1520, 142,,0
Sleep 10
MouseClick, left, 1713, 48,,0
Sleep 100
MouseClick, left, 641, 843,,0
return


; Admin Swipe
^[::
MouseClick, left, 720, 818,,0
Sleep 500
MouseMove, 559, 428
MouseClickDrag, left, 559, 428, 1420, 428, 10
return


; Skeld Sabotages
; Reactor
Numpad1::
NumpadEnd::
Send {Tab}
Sleep 10
MouseClick, left, 169, 526,,0
Sleep 100
Send {Esc}
return

; Lights
Numpad2::
NumpadDown::
Send {Tab}
Sleep 10
MouseClick, left, 780, 706,,0
Sleep 100
Send {Esc}
return

; O2
Numpad3::
NumpadPgdn::
Send {Tab}
Sleep 10
MouseClick, left, 1301, 478,,0
Sleep 100
Send {Esc}
return

; Comms
Numpad4::
NumpadLeft::
Send {Tab}
Sleep 10
MouseClick, left, 1211, 970,,0
Sleep 100
Send {Esc}
return


; Public Game
^P::
MouseClick, left, 368, 391,,0
Sleep 100
MouseClick, left, 1544, 640,,0
Sleep 200
MouseClick, left, 965, 612,,0
return



#IfWinActive

; Admin Commands

F7::
Suspend
return

F7 & 7::
Edit
return

#IfWinActive ahk_exe sublime_text.exe
~^s::
Send, {ctrl down}s{ctrl up}
sleep, 100
reload
return

