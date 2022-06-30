#SingleInstance, force
#MaxHotkeysPerInterval, 999999
#NoEnv

Version := "Beta 0.68"
FileDelete, %A_ScriptDir%\Typing-Text.txt
Sleep, 250
FileReadLine, Check, %A_ScriptDir%\Typing-Config.cfg, 1
FileReadLine, pageNumber, %A_ScriptDir%\Typing-Config.cfg, 12
Sleep, 250
If Check = 1
{
        Msgbox, Currently Running Version %Version%
        Exit
}
Else if Check = 2
{
        ;stoped
        MsgBox, The script has stopped running
        Msgbox, 4, , Do you want to exit?
        IfMsgBox, Yes
        {
                FileReadLine, UsernameX, %A_ScriptDir%\Typing-Config.cfg, 2
                FileReadLine, UsernameY, %A_ScriptDir%\Typing-Config.cfg, 3
                FileReadLine, typingLessonsX, %A_ScriptDir%\Typing-Config.cfg, 4
                FileReadLine, typingLessonsY, %A_ScriptDir%\Typing-Config.cfg, 5
                FileReadLine, nextArrowX, %A_ScriptDir%\Typing-Config.cfg, 6
                FileReadLine, nextArrowY, %A_ScriptDir%\Typing-Config.cfg, 7
                FileReadLine, backArrowX, %A_ScriptDir%\Typing-Config.cfg, 8
                FileReadLine, backArrowY, %A_ScriptDir%\Typing-Config.cfg, 9
                FileReadLine, typingBoxX, %A_ScriptDir%\Typing-Config.cfg, 10
                FileReadLine, typingBoxY, %A_ScriptDir%\Typing-Config.cfg, 11
                FileReadLine, pageNumber, %A_ScriptDir%\Typing-Config.cfg, 12
                FileDelete, %A_ScriptDir%\Typing-Config.cfg
                FileAppend, 1`n%UsernameX%`n%UsernameY%`n%typingLessonsX%`n%typingLessonsY%`n%nextArrowX%`n%nextArrowY%`n%backArrowX%`n%backArrowY%`n%typingBoxX%`n%typingBoxY%`n%pageNumber%, %A_ScriptDir%\Typing-Config.cfg
                ExitApp, 
        }
        IfMsgBox, No
        {
                FileReadLine, UsernameX, %A_ScriptDir%\Typing-Config.cfg, 2
                FileReadLine, UsernameY, %A_ScriptDir%\Typing-Config.cfg, 3
                FileReadLine, typingLessonsX, %A_ScriptDir%\Typing-Config.cfg, 4
                FileReadLine, typingLessonsY, %A_ScriptDir%\Typing-Config.cfg, 5
                FileReadLine, nextArrowX, %A_ScriptDir%\Typing-Config.cfg, 6
                FileReadLine, nextArrowY, %A_ScriptDir%\Typing-Config.cfg, 7
                FileReadLine, backArrowX, %A_ScriptDir%\Typing-Config.cfg, 8
                FileReadLine, backArrowY, %A_ScriptDir%\Typing-Config.cfg, 9
                FileReadLine, typingBoxX, %A_ScriptDir%\Typing-Config.cfg, 10
                FileReadLine, typingBoxY, %A_ScriptDir%\Typing-Config.cfg, 11
                FileReadLine, pageNumber, %A_ScriptDir%\Typing-Config.cfg, 12
                FileDelete, %A_ScriptDir%\Typing-Config.cfg
                FileAppend, 1`n%UsernameX%`n%UsernameY%`n%typingLessonsX%`n%typingLessonsY%`n%nextArrowX%`n%nextArrowY%`n%backArrowX%`n%backArrowY%`n%typingBoxX%`n%typingBoxY%`n%pageNumber%, %A_ScriptDir%\Typing-Config.cfg
                Reload
        }
}
Else {
        ;setup
        UrlDownloadToFile, https://github.com/Kathund/Typing-Tutor-Cheats/releases/download/v0.63-beta/Typing-Text.txt, %A_ScriptDir%\Typing-Text.txt
        Msgbox, Currently Running Version %Version%
        FileDelete, %A_ScriptDir%\Typing-Config.cfg
        Msgbox, Welcome to Ur Typing Tutor CHEAT!
        Msgbox, 3, First Time Setup, Do u want to run the First time Setup
        IfMsgBox, Yes
        {
                MsgBox, Close any KiransTypingTutor instances before clicking OK
                IfMsgBox, Ok
                        Loop, 10
                        {       
                                WinKill, Kiran's Typing Tutor
                                Sleep, 25
                        }
                        Run, C:\Program Files (x86)\Kiran's Typing Tutor\KiransTypingTutor.exe
                        Sleep, 2000
                        WinActivate, Kiran's Typing Tutor,
                        Sleep, 2000
                        MsgBox, Now that everything is set!
                        Msgbox, Move Your mouse to the "User Name" box in the top Right
                        Msgbox, 0, Typing, Once There hover over it! You will have 20 seconds, 20
                        Sleep, 250
                        WinActivate, Kiran's Typing Tutor
                        Sleep, 500
                        MouseGetPos, UsernameX, UsernameY
                        Msgbox, Good job You have done your first step
                        Msgbox, Now Move Your mouse to the "Typing Lessons" icon
                        Msgbox, 0, Typing, Hover Over it! You will have 20 seconds, 20
                        Sleep, 250
                        WinActivate, Kiran's Typing Tutor
                        Sleep, 500
                        MouseGetPos, typingLessonsX, typingLessonsY
                        Msgbox, Good job You have done your Second step
                        Sleep, 50
                        WinActivate, Kiran's Typing Tutor
                        Sleep, 50
                        MouseClick, Left, UsernameX, UsernameY, 1, 0
                        Sleep, 25
                        Sendraw, Typing
                        Sleep, 50
                        MouseClick, Left, typingLessonsX, typingLessonsY, 1, 0
                        Sleep, 250
                        Msgbox, Now move the mouse to the NEXT ARROW at the bottom of the window
                        Msgbox, 0, Typing, Hover Over it! You will have 20 seconds, 20
                        WinActivate, Kiran's Typing Tutor
                        Sleep, 500
                        MouseGetPos, nextArrowX, nextArrowY
                        Msgbox, Now move the mouse to the BACK ARROW at the bottom of the window
                        Msgbox, 0, Typing, Hover Over it! You will have 20 seconds, 20
                        WinActivate, Kiran's Typing Tutor
                        Sleep, 500
                        MouseGetPos, backArrowX, backArrowY 
                        MouseMove, nextArrowX, nextArrowY, 0
                        Sleep, 50
                        MouseClick, Left, nextArrowX, nextArrowY, 1, 
                        Sleep, 50
                        MouseClick, Left, nextArrowX, nextArrowY, 1, 0
                        Sleep, 50
                        MouseClick, Left, nextArrowX, nextArrowY, 1, 0
                        Sleep, 50
                        MouseClick, Left, nextArrowX, nextArrowY, 1, 0
                        Sleep, 50
                        MouseClick, Left, nextArrowX, nextArrowY, 1, 0
                        Sleep, 50
                        MouseClick, Left, nextArrowX, nextArrowY, 1, 0
                        Msgbox, Last one!
                        Msgbox, Now move the mouse to the big box just above the arrows
                        Msgbox, 0, Typing, Hover Over it! You will have 20 seconds, 20
                        WinActivate, Kiran's Typing Tutor
                        Sleep, 500
                        MouseGetPos, typingBoxX, typingBoxY 
                        MouseMove, nextArrowX, nextArrowY, 0
                        Sleep, 50
                        MouseClick, Left, backArrowX, backArrowY, 1, 
                        Sleep, 50
                        MouseClick, Left, backArrowX, backArrowY, 1, 0
                        Sleep, 50
                        MouseClick, Left, backArrowX, backArrowY, 1, 0
                        Sleep, 50
                        MouseClick, Left, backArrowX, backArrowY, 1, 0
                        Sleep, 50
                        MouseClick, Left, backArrowX, backArrowY, 1, 0
                        Sleep, 50
                        MouseClick, Left, backArrowX, backArrowY, 1, 0
                        Loop, 10
                        {       
                                WinKill, Kiran's Typing Tutor
                                Sleep, 25
                        }
                        Msgbox, Finished Setup
                        Msgbox, One last thing
                        Msgbox, ALT+Q will start the script
                        MsgBox, ALT+W will close the script
                        FileAppend, 1`n%UsernameX%`n%UsernameY%`n%typingLessonsX%`n%typingLessonsY%`n%nextArrowX%`n%nextArrowY%`n%backArrowX%`n%backArrowY%`n%typingBoxX%`n%typingBoxY%`n0, %A_ScriptDir%\Typing-Config.cfg
                IfMsgBox, Cancel 
                        Reload
        }
}
IfMsgBox, No
{
        ExitApp
}
IfMsgBox, Cancel
        ExitApp


;fix 
Sendinput, {AltUp}

; lock kbm
hk(f=0, mouse=0) { 
  static allkeys, ExcludeKeys:="LButton,RButton"
  if !allkeys
  {
     s:="||NumpadEnter|Home|End|PgUp|PgDn|Left|Right|Up|Down|Del|Ins|"
    Loop, 254
      k:=GetKeyName(Format("VK{:0X}",A_Index))
        , s.=InStr(s, "|" k "|") ? "" : k "|"
    For k,v in {Control:"Ctrl",Escape:"Esc"}
      s:=StrReplace(s, k, v)
    allkeys:=Trim(s, "|")
  }
  ;------------------
  f:=f ? "On":"Off"
  if mouse
  ExcludeKeys:=""
  For k,v in StrSplit(allkeys,"|")
    if v not in %ExcludeKeys%
      Hotkey, *%v%, Block_Input, %f% UseErrorLevel
  Block_Input:
  if message!=
  Progress, B1 M fs12 ZH0, %message%
  if (f="off")
  Progress, Off
  Return
}

; Keybinds

!r::
Reload
Return

!q::
Goto, Loop
Return

!w::
Goto, Close
Return

; Loop
Loop:
FileReadLine, UsernameX, %A_ScriptDir%\Typing-Config.cfg, 2
FileReadLine, UsernameY, %A_ScriptDir%\Typing-Config.cfg, 3
FileReadLine, typingLessonsX, %A_ScriptDir%\Typing-Config.cfg, 4
FileReadLine, typingLessonsY, %A_ScriptDir%\Typing-Config.cfg, 5
FileReadLine, nextArrowX, %A_ScriptDir%\Typing-Config.cfg, 6
FileReadLine, nextArrowY, %A_ScriptDir%\Typing-Config.cfg, 7
FileReadLine, backArrowX, %A_ScriptDir%\Typing-Config.cfg, 8
FileReadLine, backArrowY, %A_ScriptDir%\Typing-Config.cfg, 9
FileReadLine, typingBoxX, %A_ScriptDir%\Typing-Config.cfg, 10
FileReadLine, typingBoxY, %A_ScriptDir%\Typing-Config.cfg, 11
FileReadLine, pageNumber, %A_ScriptDir%\Typing-Config.cfg, 12
FileReadLine, TextP01, %A_ScriptDir%\Typing-Text.txt, 1
FileReadLine, TextP02, %A_ScriptDir%\Typing-Text.txt, 2
FileReadLine, TextP03, %A_ScriptDir%\Typing-Text.txt, 3
FileReadLine, TextP04, %A_ScriptDir%\Typing-Text.txt, 4
FileReadLine, TextP05, %A_ScriptDir%\Typing-Text.txt, 5
FileReadLine, TextP06, %A_ScriptDir%\Typing-Text.txt, 6
FileReadLine, TextP07, %A_ScriptDir%\Typing-Text.txt, 7
FileReadLine, TextP08, %A_ScriptDir%\Typing-Text.txt, 8
FileReadLine, TextP09, %A_ScriptDir%\Typing-Text.txt, 9
FileReadLine, TextP10, %A_ScriptDir%\Typing-Text.txt, 10
FileReadLine, TextP11, %A_ScriptDir%\Typing-Text.txt, 11
FileReadLine, TextP12, %A_ScriptDir%\Typing-Text.txt, 12
FileReadLine, TextP13, %A_ScriptDir%\Typing-Text.txt, 13
FileReadLine, TextP14, %A_ScriptDir%\Typing-Text.txt, 14
FileReadLine, TextP15, %A_ScriptDir%\Typing-Text.txt, 15
Loop, 10 {
        WinKill, Kiran's Typing Tutor
        Sleep, 10
}

Run, C:\Program Files (x86)\Kiran's Typing Tutor\KiransTypingTutor.exe
Sleep, 5000
WinActivate, Kiran's Typing Tutor
Sleep, 50
MouseMove, UsernameX, UsernameY, 0
Sleep, 50
MouseClick, Left, UsernameX, UsernameY, 1, 0
Sleep, 50
Sendraw, Typing
Sleep, 50
MouseMove, typingLessonsX, typingLessonsY, 0
Sleep, 50
MouseClick, Left, typingLessonsX, typingLessonsY, 1, 0
Loop, {
        Loop, 6,
        {
                MouseMove, %nextArrowX%, %nextArrowY%, 0
                Sleep, 500
                MouseClick, left, %nextArrowX%, %nextArrowY%, 1, 0
        }
        hk(1,1)  
        SetCapsLockState, off 
        Sleep, 1750
        MouseMove, %typingBoxX%, %typingBoxY%, 0
        Sleep, 1750
        MouseClick, left, %typingBoxX%, %typingBoxY%, 1, 0 
        Send, %TextP01%
        Sleep, 1750
        Send, %TextP02%
        Sleep, 1750
        Send, %TextP03%
        Sleep, 1750
        Send, %TextP04% 
        Sleep, 1750
        Send, %TextP05%
        Sleep, 1750
        Send, %TextP06%
        Sleep, 1750
        Send, %TextP07%
        Sleep, 1750
        Send, %TextP08%
        Sleep, 1750
        Send, %TextP09%
        Sleep, 1750
        Send, %TextP10%
        Sleep, 1750
        Send, %TextP11%
        Sleep, 1750
        Send, %TextP12%
        Sleep, 1750
        Send, %TextP13%
        Sleep, 1750
        Send, %TextP14%
        Sleep, 350
        Send, %TextP15%
        Sleep, 1750
        Loop, 21,
        {
                MouseMove, %backArrowX%, %backArrowY%, 0
                Sleep, 500
                MouseClick, left,%backArrowX%, %backArrowY%, 1, 0
        }

}

Return

Close:
FileReadLine, UsernameX, %A_ScriptDir%\Typing-Config.txt, 2
FileReadLine, UsernameY, %A_ScriptDir%\Typing-Config.txt, 3
FileReadLine, typingLessonsX, %A_ScriptDir%\Typing-Config.txt, 4
FileReadLine, typingLessonsY, %A_ScriptDir%\Typing-Config.txt, 5
FileReadLine, nextArrowX, %A_ScriptDir%\Typing-Config.txt, 6
FileReadLine, nextArrowY, %A_ScriptDir%\Typing-Config.txt, 7
FileReadLine, backArrowX, %A_ScriptDir%\Typing-Config.txt, 8
FileReadLine, backArrowY, %A_ScriptDir%\Typing-Config.txt, 9
FileReadLine, typingBoxX, %A_ScriptDir%\Typing-Config.txt, 10
FileReadLine, typingBoxY, %A_ScriptDir%\Typing-Config.txt, 11
FileDelete, %A_ScriptDir%\Typing-Config.txt
FileAppend, 2`n%UsernameX%`n%UsernameY%`n%typingLessonsX%`n%typingLessonsY%`n%nextArrowX%`n%nextArrowY%`n%backArrowX%`n%backArrowY%`n%typingBoxX%`n%typingBoxY%, %A_ScriptDir%\Typing-Config.txt
Reload
Return

/*

Exit:
hk(0)  ; Enable all keyboard and mouse buttons
Sendinput, {AltDown}r
Sleep, 250
ExitApp
Return

*/

Exit:
hk(0)  ; Enable all keyboard and mouse buttons
Return

Run:
Msgbox, 1
Return
