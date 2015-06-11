#include <Constants.au3>
#include <Misc.au3>

;
; AutoIt Version: 3.0
; Name:           Steam Monster Clicker 2015
; Language:       English
; Platform:       Windows 7 Professional
; Author:         Ed Prevost (@edwardprevost)
;
; Script Function:
;   Clicks on all enemies repeatedly

; Prompt the user to run the script
Local $iAnswer = MsgBox(BitOR($MB_YESNO, $MB_SYSTEMMODAL), "Steam Monster Clicker 2015", "This script will click each monster rapidly, for 10000 clicks, four times, want to run it?")

Func _Kill()
   Exit 0
EndFunc
HotKeySet("E","_Kill()")

If $iAnswer = 7 Then
	MsgBox($MB_SYSTEMMODAL, "Steam Monster Clicker 2015", "Adios!")
	Exit
EndIf

Local $cCount = 0

Local $x = 0
Local $y = 0

MsgBox($MB_SYSTEMMODAL, "Steam Monster Clicker 2015", "Click on the nose of the bottom middle monster!")
While 1
   Sleep(250)
   If  _IsPressed("01") Then
	  Local $mPosition = MouseGetPos()
	  $x = $mPosition[0]
	  $y = $mPosition[1]
   ExitLoop
EndIf
WEnd

While $cCount < 4
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

  MouseClick ( "left", $x, $y, 10000, 0)
  MouseClick ( "left", $x - 127, $y -66 , 10000, 0)
  MouseClick ( "left", $x + 127, $y -66 , 10000, 0)
  MouseClick ( "left", $x, $y -200 , 10000, 0)
WEnd

; Finished!
MsgBox($MB_SYSTEMMODAL, "Steam Monster Clicker 2015", "40K Clicks completed!")
