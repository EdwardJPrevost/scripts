#include <Constants.au3>
#include <Misc.au3>

;
; AutoIt Version: 3.0
; Language:       English
; Platform:       Windows 7 Professional
; Author:         Ed Prevost (@edwardprevost)
;
; Script Function:
;   Clicks on all enemies repeatedly

; Prompt the user to run the script
Local $iAnswer = MsgBox(BitOR($MB_YESNO, $MB_SYSTEMMODAL), "Steam Monster Clicker 2015", "This script will click each monster rapidly, want to run it?")


If $iAnswer = 7 Then
	MsgBox($MB_SYSTEMMODAL, "Steam Monster Clicker 2015", "Adios!")
	Exit
EndIf

Func doClicks($times)
	  MsgBox($MB_SYSTEMMODAL, "Steam Monster Clicker", "Click on the nose of the bottom middle monster!")
	  $x = 0
	  $y = 0
	  $cCount = 0
   While 1
	  Sleep(250)
	  If  _IsPressed("01") Then
		 Local $mPosition = MouseGetPos()
		 $x = $mPosition[0]
		 $y = $mPosition[1]
		 ExitLoop
	  EndIf
   WEnd

   While $cCount < $times
	  $cCount += 1
	  Switch PixelGetColor($x +127, $y -66)
		 Case "0xF08200"
			Sleep(10000)
			MouseClick($x, $y - 69)
			Sleep(10000)
		 Case "0xFF7300"
			Sleep(10000)
			MouseClick($x, $y - 69)
			Sleep(10000)
		 Case "0xF0730F"
			Sleep(10000)
			MouseClick($x, $y - 69)
			Sleep(10000)
	  EndSwitch

	  MouseClick ( "left", $x, $y, 4, 0)
	  MouseClick ( "left", $x - 127, $y -66 , 4, 0)
	  MouseClick ( "left", $x + 127, $y -66 , 4, 0)
	  MouseClick ( "left", $x, $y -200 , 4, 0)

   WEnd

   $cont = MsgBox(BitOR($MB_YESNO, $MB_SYSTEMMODAL), "Steam Monster Clicker 2015", "Want to continue clicking?")
   If $cont <> 7 Then
	  $clicks = InputBox("Steam Monster Clicker 2015", "How many rounds of clicking would you like?", "", " M4")
	  doClicks($clicks)
   Else
	  MsgBox($MB_SYSTEMMODAL, "Steam Monster Clicker 2015", "Adios!")
	  Exit
   EndIf

EndFunc

doClicks(10)

