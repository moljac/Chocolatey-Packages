
Sleep 10000
IfWinExist, Xamarin Installer
{
	WinActivate, Xamarin Installer
	WinWaitActive, Xamarin Installer
	Sleep 500
	
	;ControlClick 600, 430, Xamarin Installer
	;Send !c
	Send, {ENTER}
}

Sleep 5000
IfWinExist, Xamarin Installer
{
	WinActivate, Xamarin Installer
	WinWaitActive, Xamarin Installer
	Sleep 500
	
	;ControlClick 600, 430, Xamarin Installer
	;Send, {ENTER}
	Send, !n
}

Sleep 5000
IfWinExist, Xamarin Installer
{
	WinActivate, Xamarin Installer
	WinWaitActive, Xamarin Installer
	Sleep 500
	
	Send, {TAB}{TAB}{SPACE}{ENTER}
}

Sleep 5000
while winactive("Xamarin Installer")
{
	ControlSend, , !n
	Sleep, 1000
}

Sleep, 5000 
IfWinExist, Installation complete
{
	WinActivate, Installation complete
	WinWaitActive, Installation complete
	Send, !c
}

Sleep, 5000 
IfWinExist, Developer Center - Xamarin
{
	WinClose
}

Return
	
;Send, !{F4}
;!`::WinClose, A
	