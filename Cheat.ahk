IF NOT A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"
   ExitApp
}


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

IfNotExist, cports.exe
{
        MsgBox, Please download cports.exe
}
 
F3::logoutCommand()
F4::hideout()
F2::remaining()
^WheelDown::tabRight()
^WheelUp::tabLeft()

 
logoutCommand(){
                Run cports.exe /close * * * * PathOfExile_x64.exe
                Sleep 10
                Send !{f10}
                return
}
 
hideout(){
        IfWinActive Path of Exile
        {
                BlockInput On
                SendInput, {Enter}
                Sleep 2
                SendInput, {/}hideout
                SendInput, {Enter}
                BlockInput Off
        }
        return
}
 
remaining(){
        IfWinActive Path of Exile
        {
                BlockInput On
                SendInput, {Enter}
                Sleep 2
                SendInput, {/}remaining
                SendInput, {Enter}
                BlockInput Off
        }
        return
}


tabLeft(){
	IfWinActive Path of Exile
	{
		SendInput, {Left}
	}
    return
}

tabRight(){
	IfWinActive Path of Exile
	{
		SendInput, {Right}
	}
    return
}
