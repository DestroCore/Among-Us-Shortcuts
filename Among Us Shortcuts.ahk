#SingleInstance Force
SetKeyDelay, 0

#IfWinActive

RanTitle = % Random_Choice("Among Us Shortcuts", "Yooo How are ya", "Heya", "The Cake is a Lie", "Destro Core!", "This is a Message", "e=mc^2", "Among Us", "Amogus", "I'm having way too much fun with these titles", "Appreciate my code", "Among Us Shortcuts!", "Among Us Shortcuts!!", "Among Us Shortcuts!!!", "Amogus 2: Electric BoogalooA", "When the Pretender is Skeptical", "When the imposter is suspicious", "Among Us Shortcuts?", "Among Us Shortcuts?!", "Shortcuts Among Us", "Shortcuts for Among Us", "Seeker Kill", "Have you realized that this title changes every time you start this up?", "Minceraft", "Removed Herobrine", "Shortcuts Among Us!!!! ", "Seeker Kill v2", "help", "Among Us Shortcuts", "This is an Easter Egg", "VS Impostor V4", "Never Gonna Give You Up", "I said right foot creep", "I will not let you destroy my world", "Hakai", "Kakarot", "Settings for Among Us", "Among Us Utilities", "The Powder Toy", "Stick Ranger - Dan Ball", "The Powder Game", "Super Smash Flash 2", "What's the point of us being here? Are we here just for the amusement of someone else? Are we just here to be tested as a simulation, as something for people to simply laugh about? I don't understand this anymore.", "☝︎✌︎💧︎❄︎☜︎☼︎","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Among Us Shortcuts","Sup")

Random_Choice(Choices*){
    Random,Index,1,% Choices.MaxIndex()
    Return,Choices[Index]
}


if FileExist("config.ini")
    a = 1
else
    UrlDownloadToFile, https://raw.githubusercontent.com/DestroCore/Among-Us-Shortcuts/main/config.ini,%A_WorkingDir%\config.ini


if FileExist("tempAUS.exe")
    FileDelete, tempAUS.exe



msgbox, 4096, %RanTitle%, Have fun! Press Ctrl F1 for Help and CTRL F2 for the config. F7 is Pause, 3

SetWorkingDir, %A_ScriptDir%
#MaxThreadsPerHotkey 1


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



IniRead, sskey, config.ini, GENERAL, skc, ^f8
IniRead, cckey, config.ini, GENERAL, ckc, f8
IniRead, ckey, config.ini, GENERAL, cc, ^t
IniRead, askey, config.ini, GENERAL, asc, +^a
IniRead, appkey, config.ini, GENERAL, appc, f6
IniRead, pgkey, config.ini, GENERAL, pgc, ^p
IniRead, mckey, config.ini, GENERAL, mc, +esc
IniRead, lckey, config.ini, GENERAL, lc, ^q
IniRead, reactorkey, config.ini, SABOTAGES, reactorc, numpad1
IniRead, lightskey, config.ini, SABOTAGES, lightsc, numpad2
IniRead, o2key, config.ini, SABOTAGES, o2c, numpad3
IniRead, commskey, config.ini, SABOTAGES, commsc, numpad4
IniRead, killkey, config.ini, KILLBUTTON, killc, q


Hotkey,%sskey%,SeekerKill
Hotkey,%cckey%,ClickerKill
Hotkey,%ckey%,Chat
Hotkey,%askey%,AdminSwipe
Hotkey,%appkey%,AutoPublicPrivate
Hotkey,%pgkey%,PublicGame
Hotkey,%mckey%,SettingsMenu
Hotkey,%lckey%,Leave
Hotkey,%reactorkey%,ReactorSkeld
Hotkey,%lightskey%,LightsSkeld
Hotkey,%o2key%,O2Skeld
Hotkey,%commskey%,CommsSkeld

currentVer = 1.2.0

PageRequest := ComObjCreate("WinHttp.WinHttpRequest.5.1")
PageRequest.Open("GET", "https://raw.githubusercontent.com/DestroCore/Among-Us-Shortcuts/Version-Checker/latest.txt", true)
PageRequest.Send()
PageRequest.WaitForResponse()
latestVer := PageRequest.ResponseText

; MsgBox,,Latest, %latestVer%
; MsgBox,,Current, %currentVer%
CurrentAUS = %A_ScriptName%


if (latestVer != currentVer) {
    MsgBox, 4, NEW UPDATE AVAILABLE!!,Your version %currentVer% is outdated. The latest version is %latestVer% Do you want to install the latest version? (Ignore if both versions are the same)
    IfMsgBox, No, return
    IfMsgBox, Yes
        MsgBox,,Little Thing...,The Program will restart after downloading. If you see a message talking about 'instances', just press Ok.
        UrlDownloadToFile,https://github.com/DestroCore/Among-Us-Shortcuts/releases/latest/download/Among.Us.Shortcuts.exe,%A_WorkingDir%\AUS.exe
        FileMove, %CurrentAUS%, tempAUS.exe
        FileMove, AUS.exe, Among Us Shortcuts.exe
        Run Among Us Shortcuts.exe
        ExitApp
}

return


;:*:paste::first game impostor and green has to get voted out immediately. i couldn't win



;Config
^F2::
if FileExist("config.ini")
    Run config.ini
else
    UrlDownloadToFile, https://raw.githubusercontent.com/DestroCore/Among-Us-Shortcuts/main/config.ini,%A_WorkingDir%\config.ini
return

; Help
^F1::

if FileExist("help.txt")
    Run help.txt
else
    Run https://github.com/DestroCore/Among-Us-Shortcuts/tree/alpha#shortcuts
return

;Restart
^F5::
MsgBox, 4,Reloading,Are you sure you want to restart Among Us Shortcuts? (You can press Ctrl Shift F5 to skip this dialogue)
IfMsgBox, No, return
IfMsgBox, Yes
    reload
    Sleep 1000
    MsgBox,4,Uh Oh, The program couldn't be restarted! Do you want to close the program? (You can always restart it manually)
    IfMsgBox, Yes, ExitApp
    IfMsgBox, No, return
return

+^F5::
reload
return


; Seeker Kill
SeekerKill:
    Toggle := !Toggle

    If Toggle
    {
        Gui SK:Show, X 1650 Y 60 NoActivate
    } else {
        Gui SK:Hide
    }

    While Toggle
    {
        Send, %killkey%
        sleep 100
    }
return

;Clicker Kill
ClickerKill:
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
        Send, %killkey%
        sleep 50
        MouseClick, left, 1595, 943,1
        sleep 50
    }
return



;Auto Public Private
AutoPublicPrivate:
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
        MouseClick, left, 1776, 627,,0
    }
return





;Bonus

:*:=)::=) It's kill or be killed after all
:*:N-N::>:(



;#IfWinActive ahk_exe Among Us.exe
;if (WinActive("ahk_exe Among Us.exe")){

    ; Settings Menu
    SettingsMenu() {
         if (WinActive("ahk_exe Among Us.exe")) {
            MouseClick, left, 1688, 80,,0
        }
    }
    return


    ; Leave Game
    Leave() {
        if (WinActive("ahk_exe Among Us.exe")) {
            MouseClick, left, 1688, 80,,0
            Sleep, 100
            MouseClick, left, 957, 874,,0
        }
    }
    return

    
    #IfWinActive ahk_exe Among Us.exe
    ;Chat
    Chat() {
        if (WinActive("ahk_exe Among Us.exe")) {
            MouseClick, left, 1578, 78,,0
            ;Sleep 10
            ;MouseClick, left, 1713, 48,,0
            Sleep 100
            MouseClick, left, 641, 864,,0
        /*} else {
            Send Hi
            ;Send ^t
            return
*/
        }
    }
    return

    #IfWinActive
    +^T::
    MouseClick, left, 1578, 78,,0
    Sleep 10
    MouseClick, left, 1578, 78,, 0
    Sleep 100
    ;MouseClick, left, 641, 864,,0
    Sleep 100
    Send, Where's the body? State the location of the corpse
    Sleep 10
    Send {Enter}
    return



    ; Admin Swipe
    AdminSwipe() {
        if (WinActive("ahk_exe Among Us.exe")) {
            MouseClick, left, 720, 818,,0
            Sleep 500
            MouseMove, 559, 428
            MouseClickDrag, left, 559, 428, 1420, 428, 10
        }
    }
    return


    ; Skeld Sabotages

    ; Reactor
    ReactorSkeld() {
        if (WinActive("ahk_exe Among Us.exe")) {
            Send {Tab}
            Sleep 10
            MouseClick, left, 1025, 263,,0
            ;MouseClick, left, 366, 303,,0
            MouseClick, left, 169, 526,,0
            MouseClick, left, 780, 706,,0
            Sleep 100
            Send {Esc}
        }
    }
    return

    ; Lights
    LightsSkeld() {
        Send {Tab}
        Sleep 10
        MouseClick, left, 1025, 263,,0
        MouseClick, left, 780, 706,,0
        Sleep 100
        Send {Esc}
    }
    return

    ; O2
    O2Skeld() {
        Send {Tab}
        Sleep 10
        MouseClick, left, 1301, 478,,0
        Sleep 100
        Send {Esc}
    }
    return

    ; Comms
    CommsSkeld() {
        Send {Tab}
        Sleep 10
        MouseClick, left, 1211, 970,,0
        Sleep 100
        Send {Esc}
    }
    return


    ; Public Game
    PublicGame() {
        MouseClick, left, 368, 391,,0
        Sleep 100
        MouseClick, left, 1544, 640,,0
        Sleep 200
        MouseClick, left, 965, 612,,0

        ; 2 impostors
        Sleep 1000
        MouseClick, left, 1497, 160,,0
        Sleep 200
        MouseClick, left, 1732, 397,,0
    }
    return

    ;NoMoreTakebacks
    NoMore() {
        MouseClick, left, 145, 192,,0
        Sleep 100
        MouseClick, left, 1522, 644,,0
        Sleep 100
        Send {Tab}
    }
    return
;}
return


#IfWinActive

+^F4::
MsgBox, 4,You're going?,Are you sure you want to exit Among Us Shortcuts?
IfMsgBox, No, return
IfMsgBox, Yes, ExitApp
return



;Play Again
^#::
MouseClick, left, 1582, 896,,0
Sleep 200
MouseClick, left, 1786, 901,,0
return

;Quit Round
+^#::
MouseClick, left, 1582, 896,,0
Sleep 200
MouseClick, left, 133, 885,,0
return



; Admin Commands

F7::
Suspend
Pause,,1
If (A_IsSuspended) {
    Gui SUS:New
    Gui +AlwaysOnTop -Caption +Disabled
    Gui, Font, cLime s18, Segoe UI Black
    Gui, Color, 99BBFF
    Gui +LastFound
    WinSet, TransColor, 99BBFF
    Gui, Add, Text,, Program Paused (F7)
    Gui, Show, X 0 Y 0 NoActivate
} else {
    Gui SUS:Destroy
}
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

#IfWinActive