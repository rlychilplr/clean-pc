#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


{
	Gui, Show, w450 h620, clean pc
	Gui, Color, 0F0F10
	Gui, Add, Text, cd10e204, when i say to delete *filelocation* i mean all the items within that folder
	Gui, Add, Text, cd10e204, some files may not be deleted because they are in use by a running program
	Gui, Add, Text, cd10e204, a popup will apear on the screen and tell you if any files are left
	Gui, Add, Text, cd10e204, note that some of these dont work if you have installed the program in a custome folder
	Gui, Add, Text, cd10e204, also note that spotify chache only works on the official version, not the microsoft store version
	Gui, Add, Text, cd10e204, ctrl+n to toggle gui always on top
	Gui, Add, Text, cd7e8c10,  
	Gui, Add, Text, cd7e8c10, ctrl+q to delete temp
	Gui, Add, Text, cd7e8c10, ctrl+w to delete dllcache (microsoft store cache)
	Gui, Add, Text, cd7e8c10, crtl+e to delete Appdata\Local\Temp
	Gui, Add, Text, cd7e8c10, ctrl+r to delete Downloaded Program Files
	Gui, Add, Text, cd7e8c10, ctrl+t to delete Temporary Internet Files
	Gui, Add, Text, cd7e8c10, ctrl+y to delete Software Distribution (windows update folder)
	Gui, Add, Text, cd7e8c10, ctrl+u to delete prefetch (may slow down some aplications on startup)
	Gui, Add, Text, cd7e8c10, ctrl+p to delete OneDriveTemp
	Gui, Add, Text, cd7e8c10, ctrl+i to delete downoads
	Gui, Add, Text, cd7e8c10, ctrl+o to delete the recycling bin
	Gui, Add, Text, cd7e8c10, ctrl+a to delete spotify cache
	Gui, Add, Text, cd7e8c10, ctrl+s to delete discord cache
	Gui, Add, Text, cd7e8c10, ctrl+d to delete epic games cache
	Gui, Add, Text, cd7e8c10, ctrl+f to delete Uplay cache
	Gui, Add, Text, cd7e8c10, ctr;+g to delete google chrome crash reports
	Gui, Add, Text, cd7e8c10, ctr;+h to delete teams cache (what brainlet let the cache go in like 10 different directories?)
}

return

^n::
{
	;^n:: = Toggle AlwaysOnTop state of the active window
	!t::WinSet, AlwaysOnTop, Toggle, A
}

return


^q::
{
	DirToKill = C:\windows\Temp
	DepthToKill = 10

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
	DepthToKill = 10

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
	DepthToKill = 10

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
	DepthToKill = 10

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
	DepthToKill = 10

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
	DepthToKill = 10

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
	DepthToKill = 10

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
	DepthToKill = 10

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
	DepthToKill = 10

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

^w::
{
	DirToKill = C:\Windows\System32\dllcache
	DepthToKill = 10

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

^a::
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Spotify\User Data
	DepthToKill = 10

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

^s::
{
	DirToKill = C:\Users\%A_Username%\AppData\Roaming\Discord\Cache
	DepthToKill = 10

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

^d::
{
	DirToKill = C:\Users\%A_Username%\Documents\UnrealTournament\Saved\Paks\DownloadedPaks
	DepthToKill = 10

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

^f::
{
	DirToKill = C:\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\cache
	DepthToKill = 10

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

^g::
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Google\CrashReports
	DepthToKill = 10

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

^h::
{
	DirToKill = C:\Users\%A_Username%\AppData\Roaming\Microsoft\Teams\application cache\cache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Roaming\Microsoft\Teams\blob_storage
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Roaming\Microsoft\Teams\databases
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Roaming\Microsoft\Teams\cache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Roaming\Microsoft\Teams\gpucache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Roaming\Microsoft\Teams\Indexeddb
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Roaming\Microsoft\Teams\Local Storage
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Roaming\Microsoft\Teams\tmp
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Google\Chrome\User Data\Default\Cache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Google\Chrome\User Data\Default\Cookies
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Google\Chrome\User Data\Default\Web Data
	DepthToKill = 10

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