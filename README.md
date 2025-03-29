# Among Us Shortcuts
Formerly 'Seeker Kill', useful Keyboard Shortcuts to make the Among Us Experience Better. Pretty much just a bunch of macros. :P

**NOTE** The Images may be outdated, but the actual script has been updated. 

**NOTE** ALSO - The Source ZIP is ALWAYS Updated before the RELEASES Section. If you want the updated version, make sure to download and extract the ZIP.

## RELEASE TRAILER https://youtu.be/VSJL1g5C58E

### DOWNLOAD THE .EXE, NOT THE .AHK - only download the ahk if you are a developer who wants to modify anything such as hotkeys etc

# SKIP STRAIGHT TO SHORTCUTS: https://github.com/DestroCore/Among-Us-Shortcuts/tree/alpha#shortcuts

Whenever you use any of the **main** features within the script, a text will appear on the top right of the screen detailing which feature you are using.

### Anything with a '-HS' Sign next to it is For HIDE N SEEK!
### **NOTE** Most of these work best on Low Ping and may break if used on High Ping. If needed to, switch Among Us Servers to a region where you experience less Ping.

![image](https://github.com/DestroCore/Seeker-Kill/assets/106755516/18ab7133-d2c0-41e2-9996-46a4d219b145) 
(Example of Standard 'Seeker Kill' being used)

# **Features**
- -HS Seeker Kill
- -HS Clicker Kill
- Auto Public Private
- Chat Shortcut
- Admin Swipe
- Public Game
- Skeld Sabotage
- Settings Menu
- Leave Game
- Chat
- =)
- Config
- Restart

- Secret...

## -HS **Seeker Kill**
The Standard Kill. Every 100ms it presses Q. (Q can be changed in the config file)
Whilst all of these work best on low ping, Seeker Kill practically relies on Low Ping, as it struggles greatly on anything over 150ms
Activated by pressing **Ctrl F8**.


## -HS **Clicker Kill**
The Upgraded Kill. Every 50ms presses q, after 50ms presses the Kill Button. (Q can be changed in the config file)
The supreme kill, as it presses both the hotkey and the actual kill button
Moves Mouse to Kill Button
Activated by pressing **F8**

*Note:* If Flashlight Mode is on, Clicker Kill will restrict the flashlight to the bottom right of the screen, so the user will not be able to move the flashlight

## **Auto Public Private (Host)**
**NOTE**: Not sure if this glitch works anymore. If it doesn't, just use this as an auto-clicker or something.

Utilising Among Us glitch for getting many people in lobby - by spamming the public / private button, it pushes your lobby to the top of the lobby list, making more people join
This works by moving your mouse to the Private / Public button's location and clicking every 1ms.
This can also be used as an auto clicker, but it will only move to that specific location.
Activated by pressing **F6**

![autopp](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/338ce27d-b814-43bd-b14c-a1c5c39d4477)



## **Chat**
Simple shortcut for activating Chat
Activated by pressing **Ctrl T**

![chat](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/3173c3aa-449e-4751-ad16-abcddb24a488)



## **Admin Swipe**
By pressing a simple shortcut, you will automatically swipe the card perfectly each time
Once you press the hotkey **don't press any buttons or touch your mouse**
After it is over, feel free to continue.
Activated by pressing **Ctrl Shift A**

![admin swipe](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/52ffae65-0aac-4cd1-86a0-0ffa80ed381c)


## **Public Game**
Takes you from the Starting Menu (with 'Play, Inventory, Shop etc') to 'Public Game' in the span of 300 milliseconds.
Delays are a bit longer compared to other commands to take FPS into consideration
Immediately goes to Public Game List.
Activated by pressing **Ctrl P**

![Public Game](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/5c52cbd8-7525-4afd-af26-6ad754fcd376)


## **Sabotages (Skeld)**
Runs different sabotages (For the Skeld Only)
- Reactor - Numpad 1 (Numlock needs to be on)
- Lights - Numpad 2 (Numlock needs to be on)
- O2 - Numpad 3 (Numlock needs to be on)
- Comms - Numpad 4 (Numlock needs to be on)


## **Settings Menu**
Pressing this will take you to the pause menu / settings menu screen like in other games
Activated by pressing **Shift Esc**

![menu](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/ccf8ff92-6633-44e5-8101-a0a346bdad8b)



## **Leave Game**
Leaves the game for you under half a second. Works wonders for quick escapes
Activated by pressing **Ctrl Q**

![leave](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/f02374d9-7b1d-4103-bb6a-5796fb8ad97d)



## **Bonus**
### =)
Typing in '=)' will replace it with '=) It's kill or be killed after all'
![killorbekilled](https://github.com/DestroCore/Seeker-Kill/assets/106755516/39f53c84-c4aa-4ec8-8c31-ef3d62fdbc97)


# **Config File**
The Config file is 'config.ini' and looks like this

![image](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/7b1eac2a-31ca-4552-bb26-b9bfbfadd2e9)


The config file allows you to change the shortcuts, for example changing Clicker Kill from F8 to Shift O
The Config File works like this:
- Find the Correct Section of Your Command (e.g. [GENERAL]) ![image](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/f771f4c0-a67b-4de6-accf-e36c6b9a2eba)


- A table of what each value means lies here:

| Config Name | Feature |
| --- | --- |
| skc | Seeker Kill |
| ckc | Clicker Kill |
| cc | Chat |
| asc | Admin Swipe |
| appc | Auto Public Private |
| pgc | Public Game |
| mc | Menu |
| lc | Leave Game |
| reactorc | Reactor (Skeld) |
| lightsc | Lights (Skeld) |
| o2c | O2 (Skeld) |
| commsc | Comms (Skeld) |
| killc | Kill Button |

**Note: Kill Button (killc) is the Kill Hotkey which you set in Among Us. The Default is 'Q', and stays as Q in both Among Us and in this app unless the user changes it**

![image](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/dc4c5fcd-a5b9-45c4-bf85-dc67d9d7f4b4) ![image](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/6aa449c1-a66f-47c9-b737-6e4eb7ac548c)



- They will be in the format 'Key=Value'
  ![image](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/384055d2-b0d9-485a-bd01-64286233f03c)

- Change the 'Value' to whatever you want
  ![image](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/331935ca-e4e0-4f7f-9ef5-8a4c109ddd77)

| Shortcut | Script Reference |
| --- | --- |
| CTRL | ^ |
| SHIFT | + |
| ALT | ! |
| WINDOWS KEY | # |
(e.g. CTRL F8 = ^F8; SHIFT Y = +Y; CTRL SHIFT T = +^T)

- After changing the values that you need to, save the config.ini file and press **CTRL F5**. If **CTRL F5** does not work, restart the program manually.
  
![image](https://github.com/DestroCore/Among-Us-Shortcuts/assets/106755516/5ef81763-2d10-43e2-9754-5cf01b7336e6)




# **Shortcuts**
| Shortcut | Skill |
| --- | --- |
| Ctrl F8 | Seeker Kill |
| F8 | Clicker Kill |
| Ctrl T | Chat |
| F6 | Auto Public Prviate / Auto Click |
| Ctrl Shift A | Admin Swipe |
| Ctrl P | Public Game |
| Shift Esc | Menu |
| Ctrl + Q | Leave Game |
| =) | =) It's kill or be killed after all |

## **Skeld Sabotage Shortcuts**
| Shortcut (Numlock needs to be on) | Sabotage |
| --- | --- |
| Numpad 1 | Reactor |
| Numpad 2 | Lights |
| Numpad 3 | O2 |
| Numpad 4 | Comms |

# Credit
- Icon - IsItLucas

# To Do
- [X] Add Images / Evidence to GitHub

- [x] Add config files for users
- [X] Add Auto Update
- [ ] More features and custom autofills
- [ ] Add sabotages from all maps 1/4
- [ ] Work for Other Screen Resolutions
