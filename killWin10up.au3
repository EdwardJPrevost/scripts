;A Script to kill the Windows10 update popup from Ed Prevost
kW10()
Func kW10()
Do
sleep(5000)
If WinGetTitle("[ACTIVE]") == "Get Windows 10" Then
Global $sText = WinGetTitle("[ACTIVE]")
WinClose($sText)
EndIf
Until 1 = 2
EndFunc
