msgbox, 4096, Seeker Kill, Press F8 to activate and Deactive. It will constantly hold Q to kill. Press Shift F8 to activate 'Clicker Mode'. Shift T closes task list, 2

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

/*
SetTimer, GrabLoc, 100
return

GrabLoc:
MouseGetPos, startx, starty
return
*/

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
    Gui, Add, Text,, Ultra Kill Active
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

/*
+F8::
Clicker2 := !Clicker2
If Clicker2
{
    Gui CK2:New
    Gui +AlwaysOnTop -Caption +Disabled
    Gui, Font, cRed s16, Segoe UI Black
    Gui, Color, 99BBFF
    Gui +LastFound
    WinSet, TransColor, 99BBFF
    Gui, Add, Text,, Clicker Kill Active
    Gui, Show, X 1630 Y 20  NoActivate
    ;MouseGetPos, startx, starty
} else {
    Gui CK2:Destroy
    MouseMove, startx, starty
}

While Clicker2
{
    Send, q
    sleep 5
    MouseClick, left, 1595, 943,1
    sleep 5
    MouseMove, startx, starty
    sleep 40
}
return
*/

+T::
MouseClick, left, 532, 392, 1
return

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
    MouseClick, left, 689, 985, 1
}
return


:=:=)::=) It's kill or be killed after all


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