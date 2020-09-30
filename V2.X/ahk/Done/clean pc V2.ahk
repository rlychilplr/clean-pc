#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

{
Gui, Show, w380 h380, clean pc
Gui, Color, 0F0F10
Gui, Add, Text, cd5e204, when i say to delete *filelocation* i mean all the items within that folder
Gui, Add, Text, cd5e204, some files may not be deleted because they are in use by a running program
Gui, Add, Text, cd5e204, a popup will apear on the screen and tell you if any files are left
Gui, Add, Text, cd5e204, ctrl+n to toggle gui always on top
Gui, Add, Text, cd7e8c5,
Gui, Add, Text, cd7e8c5, ctrl+q to delete temp
Gui, Add, Text, cd7e8c5, crtl+e to delete Appdata\Local\Temp
Gui, Add, Text, cd7e8c5, ctrl+r to delete Downloaded Program Files
Gui, Add, Text, cd7e8c5, ctrl+t to delete Temporary Internet Files
Gui, Add, Text, cd7e8c5, ctrl+y to delete Software Distribution (windows update folder)
Gui, Add, Text, cd7e8c5, ctrl+u to delete prefetch (may slow down some aplications on startup)
Gui, Add, Text, cd7e8c5, ctrl+p to delete OneDriveTemp
Gui, Add, Text, cd7e8c5, ctrl+i to delete downoads
Gui, Add, Text, cd7e8c5, ctrl+o to delete the recycling bin
}
return
^n::
{
!t::WinSet, AlwaysOnTop, Toggle, A
}
return
^q::
{
DirToKill = C:\windows\Temp
DepthToKill = 5
FileDelete, %DirToKill%\*.*
Loop, %DepthToKill%
Loop,%DirToKill%\*,2,1
FileRemoveDir, %A_LoopFileFullPath%
}
{
IfExist, %dir%\*.*
MsgBox, At least one file or folder still exists.
else
MsgBox, The directory appears to be empty.
}
Return
^e::
{
DirToKill = C:\Users\%A_Username%\AppData\Local\Temp
DepthToKill = 5
FileDelete, %DirToKill%\*.*
Loop, %DepthToKill%
Loop,%DirToKill%\*,2,1
FileRemoveDir, %A_LoopFileFullPath%
}
{
IfExist, %dir%\*.*
MsgBox, At least one file or folder still exists.
else
MsgBox, The directory appears to be empty.
}
Return
^r::
{
DirToKill = C:\Windows\Downloaded Program Files
DepthToKill = 5
FileDelete, %DirToKill%\*.*
Loop, %DepthToKill%
Loop,%DirToKill%\*,2,1
FileRemoveDir, %A_LoopFileFullPath%
}
{
IfExist, %dir%\*.*
MsgBox, At least one file or folder still exists.
else
MsgBox, The directory appears to be empty.
}
Return
^t::
{
DirToKill = C:\Users\%A_Username%\AppData\Local\Microsoft\Windows\INetCache\IE
DepthToKill = 5
FileDelete, %DirToKill%\*.*
Loop, %DepthToKill%
Loop,%DirToKill%\*,2,1
FileRemoveDir, %A_LoopFileFullPath%
}
{
IfExist, %dir%\*.*
MsgBox, At least one file or folder still exists.
else
MsgBox, The directory appears to be empty.
}
Return
^y::
{
DirToKill = C:\Windows\SoftwareDistribution
DepthToKill = 5
FileDelete, %DirToKill%\*.*
Loop, %DepthToKill%
Loop,%DirToKill%\*,2,1
FileRemoveDir, %A_LoopFileFullPath%
}
{
IfExist, %dir%\*.*
MsgBox, At least one file or folder still exists.
else
MsgBox, The directory appears to be empty.
}
Return
^u::
{
DirToKill = C:\Windows\Prefetch
DepthToKill = 5
FileDelete, %DirToKill%\*.*
Loop, %DepthToKill%
Loop,%DirToKill%\*,2,1
FileRemoveDir, %A_LoopFileFullPath%
}
{
IfExist, %dir%\*.*
MsgBox, At least one file or folder still exists.
else
MsgBox, The directory appears to be empty.
}
Return
^i::
{
DirToKill = C:\Users\%A_Username%\Downloads
DepthToKill = 5
FileDelete, %DirToKill%\*.*
Loop, %DepthToKill%
Loop,%DirToKill%\*,2,1
FileRemoveDir, %A_LoopFileFullPath%
}
{
IfExist, %dir%\*.*
MsgBox, At least one file or folder still exists.
else
MsgBox, The directory appears to be empty.
}
Return
^o::
{
DirToKill = C:\$Recycle.Bin
DepthToKill = 5
FileDelete, %DirToKill%\*.*
Loop, %DepthToKill%
Loop,%DirToKill%\*,2,1
FileRemoveDir, %A_LoopFileFullPath%
}
{
IfExist, %dir%\*.*
MsgBox, At least one file or folder still exists.
else
MsgBox, The directory appears to be empty.
}
Return
^p::
{
DirToKill = C:\OneDriveTemp
DepthToKill = 5
FileDelete, %DirToKill%\*.*
Loop, %DepthToKill%
Loop,%DirToKill%\*,2,1
FileRemoveDir, %A_LoopFileFullPath%
}
{
IfExist, %dir%\*.*
MsgBox, At least one file or folder still exists.
else
MsgBox, The directory appears to be empty.
}
Return
GuiClose:
ExitApp