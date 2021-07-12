#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; ^that is standard there for ahk files

; gui
{
	Gui, Show, w455 h870, clean pc
	Gui, Color, 0F0F10
	Gui, Add, Text, cd10e204, when i say to delete *filelocation* i mean all the items within that folder
	Gui, Add, Text, cd10e204, some files may not be deleted because they are in use by a running program
	Gui, Add, Text, cd10e204, note that some of these dont work if you have installed the program in a custome folder
	Gui, Add, Text, cd10e204, also note that spotify chache only works on the official version, not the microsoft store version
	Gui, Add, Text, cd10e204, when files are deleted you can't get them back, they are permanently deleted
	Gui, Add, Text, cd10e204, ctrl+shift+n to toggle gui always on top
	Gui, Add, Text, cd7e8c10, 
	Gui, Add, Text, cd7e8c10, ctrl+q to delete temp
	Gui, Add, Text, cd7e8c10, ctrl+w to delete dllcache (microsoft store cache)
	Gui, Add, Text, cd7e8c10, crtl+e to delete Appdata\Local\Temp
	Gui, Add, Text, cd7e8c10, ctrl+r to delete Downloaded Program Files
	Gui, Add, Text, cd7e8c10, ctrl+t to delete Temporary Internet Files
	Gui, Add, Text, cd7e8c10, ctrl+y to delete Software Distribution (windows update folder)
	Gui, Add, Text, cd7e8c10, ctrl+u to delete prefetch (may slow down some aplications on startup)
	Gui, Add, Text, cd7e8c10, ctrl+i to delete downoads
	Gui, Add, Text, cd7e8c10, ctrl+o to delete the recycling bin
	Gui, Add, Text, cd7e8c10, ctrl+p to delete OneDriveTemp
	Gui, Add, Text, cd7e8c10, ctrl+a to delete spotify cache
	Gui, Add, Text, cd7e8c10, ctrl+s to delete discord cache
	Gui, Add, Text, cd7e8c10, ctrl+d to delete epic games cache
	Gui, Add, Text, cd7e8c10, ctrl+f to delete Uplay cache
	Gui, Add, Text, cd7e8c10, ctrl+g to delete google chrome crash reports
	Gui, Add, Text, cd7e8c10, ctrl+h to delete teams cache ;(what brainlet let the cache go in like 10 different directories?) yes this is an easteregg kinda thing
	Gui, Add, Text, cd7e8c10, ctrl+j to delete office cache (doesnt work on older versons of office)
	Gui, Add, Text, cd7e8c10, ctrl+k to delete GeForce Experience cache
	Gui, Add, Text, cd7e8c10, ctrl+l to delete GOG (Good Old Games) Cache
	Gui, Add, Text, cd7e8c10, ctrl+z to delete Opera GX Cache
	Gui, Add, Text, cd7e8c10, ctrl+x to delete Firefox Cache
;	Gui, Add, Text, cd7e8c10, ctrl+c to delete 
	Gui, Add, Text, cd7e8c10, ctrl+v to delete Offline Web Pages
	Gui, Add, Text, cd7e8c10, ctrl+b to delete Brave Cache
	Gui, Add, Text, cd7e8c10, ctrl+n to delete Package Cache
;	Gui, Add, Text, cd7e8c10, ctrl+m to delete 
}
return

; Toggle AlwaysOnTop state of the active window
^+n::
{
	;^n:: = Toggle AlwaysOnTop state of the active window
	!t::WinSet, AlwaysOnTop, Toggle, A
}

return

; temp
^q::
{
	DirToKill = C:\windows\Temp
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Microsoft Store Cache
^w::
{
	DirToKill = C:\Windows\System32\dllcache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; %temp%
^e::
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Temp
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Downloaded Program Files
^r::
{
	DirToKill = C:\Windows\Downloaded Program Files
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Temp IE Files
^t::
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Microsoft\Windows\INetCache\IE
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Windows Update
^y::
{
	DirToKill = C:\Windows\SoftwareDistribution
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; prefetch
^u::
{
	DirToKill = C:\Windows\Prefetch
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Downloads
^i::
{
	DirToKill = C:\Users\%A_Username%\Downloads
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Recycle Bin
^o::
{
	DirToKill = C:\$Recycle.Bin
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; OneDrive Temp
^p::
{
	DirToKill = C:\OneDriveTemp
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Spotify Cache
^a::
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Spotify\User Data
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Discord Cache
^s::
{
	DirToKill = C:\Users\%A_Username%\AppData\Roaming\Discord\Cache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Epic Cache
^d::
{
	DirToKill = C:\Users\%A_Username%\Documents\UnrealTournament\Saved\Paks\DownloadedPaks
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Ubisoft (uplay) Cache
^f::
{
	DirToKill = C:\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\cache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Chrome Chrash Reports
^g::
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Google\CrashReports
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Teams Cache
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

Return

; Office Cache
^j::
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Microsoft\Office\16.0\OfficeFileCache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Microsoft\Office\15.0\OfficeFileCache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Nvidea Cache
^k::
{
	DirToKill = C:\ProgramData\NVIDIA Corporation\Netservice\
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; GOG Cache
^l::
{
	DirToKill = C:\ProgramData\GOG.com\Galaxy\webcache\common
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Opera GX Cache
^z::
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Opera Software\Opera GX Stable\Cache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Firefox Cache
^x::
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\Mozilla\Firefox\Profiles\3zgqredj.default-release\cache2
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Offline Web Pages
^v::
{
	DirToKill = C:\Windows\Offline Web Pages
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; brave cache
^b::
{
	DirToKill = C:\Users\%A_Username%\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\Cache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; Package Cache
^n::
{
	DirToKill = C:\ProgramData\Package Cache
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return

; 
;^m::
{
	DirToKill = c:\
	DepthToKill = 10

	FileDelete, %DirToKill%\*.*
	Loop, %DepthToKill%
		Loop,%DirToKill%\*,2,1
			FileRemoveDir, %A_LoopFileFullPath%
}

Return


GuiClose:
ExitApp
