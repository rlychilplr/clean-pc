#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



{
	Gui, Show, w520 h500, clean pc
	Gui, Color, 0F0F10
	Gui, Add, Text, cd5e204, Windows may ask for administrator privilages to see or delete some of these files,
	Gui, Add, Text, cd5e204, You have to manualy click accept or continue.
	Gui, Add, Text, cd5e204, Some of the files may be in use, in that case you get a little window that asks you to try,
	Gui, Add, Text, cd5e204, Deleting them again (most likely you get the same rasault) or to skip the file. (skipping is recomended)
	Gui, Add, Text, cd5e204, You will also have a check box in the window to say to windows to skip or delete all files (also recomended)
	Gui, Add, Text, cd5e204, That it is having problems with.
	Gui, Add, Text, cd5e204, (when i say to delete filelocation i mean all the items within that folder)
	Gui, Add, Text, cd5e204, ctrl+n to put gui always on top, ctrl+b to undo
	Gui, Add, Text, cd7e8c5,  
	Gui, Add, Text, cd7e8c5, ctrl+q to delete temp
	Gui, Add, Text, cd7e8c5, crtl+e to delete Appdata\Local\Temp
	Gui, Add, Text, cd7e8c5, ctrl+r to delete Downloaded Program Files
	Gui, Add, Text, cd7e8c5, ctrl+t to delete Temporary Internet Files
	Gui, Add, Text, cd7e8c5, ctrl+y to delete Software Distribution (windows update folder)
	Gui, Add, Text, cd7e8c5, ctrl+u to delete prefetch (may slow down some aplications on startup)
	Gui, Add, Text, cd7e8c5, ctrl+i to delete downoads
	Gui, Add, Text, cd7e8c5, ctrl+o to delete the recycling bin
}

return

^n::
{
	Gui,+AlwaysOnTop
}

return

^b::
{
	Gui,-AlwaysOnTop
}

return

^q::
{
	run, temp
	sleep, 150
	send, ^a
	sleep, 100
	send, {Delete}
	send, ^w
}
Return


^e::
{
	run, C:\Users\%A_Username%\AppData\Local\Temp
	sleep, 150
	send, ^a
	sleep, 100
	send, {Delete}
	send, ^w
}
Return


^r::
{
	run, C:\Windows\Downloaded Program Files
	sleep, 150
	send, ^a
	sleep, 100
	send, {Delete}
	send, ^w
}
Return


^t::
{
	run, C:\Users\%A_Username%\AppData\Local\Microsoft\Windows\INetCache\IE
	sleep, 150
	send, ^a
	sleep, 100
	send, {Delete}
	send, ^w
}
Return

^y::
{
	run, C:\Windows\SoftwareDistribution
	sleep, 150
	send, ^a
	sleep, 100
	send, {Delete}
	send, ^w
}
Return


^u::
{
	run, C:\Windows\Prefetch
	sleep, 150
	send, ^a
	sleep, 100
	send, {Delete}
	send, ^w
}
Return

^i::
{
	run, Downloads
	sleep, 150
	send, ^a
	sleep, 100
	send, {Delete}
	send, ^w
}
Return

^o::
{
	run, Recycle Bin
	sleep, 150
	send, ^a
	sleep, 100
	send, {Delete}
	send, ^w
}
Return


GuiClose:
	ExitApp