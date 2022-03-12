#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; not used ready to use
;CapsLock & b:: Run ""                            ;|


;key to map
;=====================================================================o
;                       CapsLock Initializer                         ;|
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff                                          ;|
;---------------------------------------------------------------------o
;=====================================================================o
;                       enhancing the shortcut                       ;|
;                      windows key+q = alt+f4  close any program     ;|
;                      windows key+f = f11     go full screen        ;|
;---------------------------------------------------------------------o
#f:: Send {f11}
;!q::Send #{Tab}                                               ;|
!w:: Send ^#{Left}                                              ;|
!e::Send ^#{Right}                                              ;| 
;=====================================================================o
; folder to oen
!o::Run "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
!t::Run "D:\T" ;
!m::Run "C:\Program Files\Wolfram Research\Mathematica\12.2\Mathematica.exe"
^!m::Run "C:\Program Files\Polyspace\R2021a\bin\matlab.exe"
!i::Run "C:\Program Files (x86)\Internet Download Manager\IDMan.exe" 
^!p::Run "D:\T\Pl\Microsoft To Do.lnk"

; open Google Calender if itwasnt open if it wasnt open it
!p::
if WinExist("Google Calendar")
    WinActivate ; Use the window found by WinExist.
else
Run "C:\Program Files\Google\Chrome\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=kjbdgfilnfhdoflbpgamdcdgpehopbep
return


; open whatsApp if itwasnt open if it wasnt open it
!a::
if WinExist("WhatsApp")
    WinActivate ; Use the window found by WinExist.
else
Run "C:\Program Files\Google\Chrome\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm"
return

; this is code to open the chrome if it isnot opened and open new tab if the chrome is opened
!c::
SetTitleMatchMode, 2
If WinExist("ahk_exe chrome.exe")
    {
    WinActivate, ahk_exe chrome.exe
    Send ^t
    }	
else
    {
    Run "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory="Default"
    ;WinActivate, ahk_exe chrome.exe
    ;WinWaitActive, ahk_exe chrome.exe
    ;Send ^l
    ;Send ^t
    }
return

;hot key
!l::Run "C:\Program Files (x86)\Mendeley Desktop\MendeleyDesktop.exe"
!k::Run "C:\Users\ahm_e\AppData\Local\Obsidian\Obsidian.exe"
;^2::Run "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
;^3::Run "C:\Program Files\Google\Chrome\Application\chrome_proxy.exe"  --profile-directory=Default --app-id=gjoaplgcpnmemdaklplebdapjihcoibe"
;^4::Run "C:\Program Files\Nitro\Pro\13\NitroPDF.exe"
;^5::Run "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE"
;^7::Run "C:\Program Files\Microsoft Office\root\Office16\VISIO.EXE"
;^0::Run "C:\Users\ahm_e\AppData\Local\Programs\Notion\Notion.exe"
; operation to make

^!f::
{
 Send, ^c
 Sleep 50
 Run, http://libgen.is/scimag/?q=%clipboard%
 Return
}
!s::
{
 Send, ^c
 Sleep 50
 Run, https://scholar.google.com/scholar?q=%clipboard%
 Return
}
return

!^q::
{
 Send, ^c
 Sleep 50
 Run, https://translate.yandex.ru/?utm_source=main_stripe_big&lang=ru-en&text=%clipboard%
 Return
}
return

^SPACE:: Winset, Alwaysontop, , A ; ctrl + space
+`::Run taskmgr
return

;=====================================================================o
;                   Feng Ruohang's AHK Script                         | 
;                      CapsLock Enhancement                           |
;---------------------------------------------------------------------o
;Description:                                                         |
;    This Script is wrote by Feng Ruohang via AutoHotKey Script. It   |
; Provieds an enhancement towards the "Useless Key" CapsLock, and     |
; turns CapsLock into an useful function Key just like Ctrl and Alt   |
; by combining CapsLock with almost all other keys in the keyboard.   |
;                                                                     |
;Summary:                                                             |
;o----------------------o---------------------------------------------o
;|CapsLock;             | {ESC}  Especially Convient for vim user     |
;|CaspLock + `          | {CapsLock}CapsLock Switcher as a Substituent|
;|CapsLock + hjklwb     | Vim-Style Cursor Mover                      |
;|CaspLock + nm,.       | Convient Home/End PageUp/PageDn             |
;|CaspLock + uiop       | Convient Delete Controller                  |
;|CapsLock + zxcvay     | Windows-Style Editor                        |
;|CapsLock + Direction  | Mouse Move                                  |
;|CapsLock + Enter      | Mouse Click                                 |
;|CaspLock + {F1}~{F6}  | Media Volume Controller                     |
;|CapsLock + qs         | Windows & Tags Control                      |
;|CapsLock + ;'[]       | Convient Key Mapping                        |
;|CaspLock + dfert      | Frequently Used Programs (Self Defined)     |
;|CaspLock + 123456     | Dev-Hotkey for Visual Studio (Self Defined) |
;|CapsLock + 67890-=    | Shifter as Shift                            |
;-----------------------o---------------------------------------------o
;|Use it whatever and wherever you like. Hope it help                 |
;=====================================================================o

;=====================================================================o
;                       CapsLock Switcher:                           ;|
;---------------------------------o-----------------------------------o
;                    CapsLock + ` | {CapsLock}                       ;|
;                    CapsLock + Space | {change lang}                       ;|
;---------------------------------o-----------------------------------o
CapsLock & `::                                                       ;|
GetKeyState, CapsLockState, CapsLock, T                              ;|
if CapsLockState = D                                                 ;|
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|
    SetCapsLockState, AlwaysOn                                       ;|
KeyWait, ``                                                          ;|
return                                                               ;|
;CapsLock & Space:: Send, #{Space} ; this to change the languge by the caplock and spacebar
;---------------------------------------------------------------------o


;=====================================================================o
;                         CapsLock Escaper:                          ;|
;----------------------------------o----------------------------------o
;                        CapsLock  |  {ESC}                          ;|
;----------------------------------o----------------------------------o
CapsLock::Send, {ESC}                                                ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                    CapsLock Direction Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + h |  Left                          ;|
;                      CapsLock + j |  Down                          ;|
;                      CapsLock + k |  Up                            ;|
;                      CapsLock + l |  Right                         ;|
;-----------------------------------o---------------------------------o
CapsLock & h::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Left}                                                 ;|
    else                                                             ;|
        Send, +{Left}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Left}                                                ;|
    else                                                             ;|
        Send, +^{Left}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & j::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Down}                                                 ;|
    else                                                             ;|
        Send, +{Down}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Down}                                                ;|
    else                                                             ;|
        Send, +^{Down}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & k::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Up}                                                   ;|
    else                                                             ;|
        Send, +{Up}                                                  ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Up}                                                  ;|
    else                                                             ;|
        Send, +^{Up}                                                 ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & l::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Right}                                                ;|
    else                                                             ;|
        Send, +{Right}                                               ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Right}                                               ;|
    else                                                             ;|
        Send, +^{Right}                                              ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o

;=====================================================================o
;                     CapsLock Home/End Navigator                    ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + o |  Home                          ;|
;                      CapsLock + p |  End                           ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & .::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {Home}                                                 ;|
    else                                                             ;|
        Send, +{Home}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{Home}                                                ;|
    else                                                             ;|
        Send, +^{Home}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & /::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {End}                                                  ;|
    else                                                             ;|
        Send, +{End}                                                 ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{End}                                                 ;|
    else                                                             ;|
        Send, +^{End}                                                ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o
;=====================================================================o
;                      CapsLock Page Navigator                       ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + i |  PageUp                        ;|
;                      CapsLock + u |  PageDown                      ;|
;                      Ctrl, Alt Compatible                          ;|
;-----------------------------------o---------------------------------o
CapsLock & ,::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {PgUp}                                                 ;|
    else                                                             ;|
        Send, +{PgUp}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{PgUp}                                                ;|
    else                                                             ;|
        Send, +^{PgUp}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & m::                                                       ;|
if GetKeyState("control") = 0                                        ;|
{                                                                    ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, {PgDn}                                                 ;|
    else                                                             ;|
        Send, +{PgDn}                                                ;|
    return                                                           ;|
}                                                                    ;|
else {                                                               ;|
    if GetKeyState("alt") = 0                                        ;|
        Send, ^{PgDn}                                                ;|
    else                                                             ;|
        Send, +^{PgDn}                                               ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                     CapsLock Mouse Controller                      ;|
;-----------------------------------o---------------------------------o
;                   CapsLock + Up   | send # left                      ;|
;                   CapsLock + Down |  Mouse Down                    ;|
;                   CapsLock + Left |  Mouse Left                    ;|
;                  CapsLock + Right |  Mouse Right                   ;|
;    CapsLock + Enter(Push Release) |  Mouse Left Push(Release)      ;|
;-----------------------------------o---------------------------------o
CapsLock & Up:: Send #{Up}                        ;|
CapsLock & Down:: Send #{Down}                             ;|
CapsLock & Left:: Send #{Left}                             ;|
CapsLock & Right:: Send #{Right}                           ;|
;-----------------------------------o                                ;|
CapsLock & Enter::                                                   ;|
SendEvent {Blind}{LButton down}                                      ;|
KeyWait Enter                                                        ;|
SendEvent {Blind}{LButton up}                                        ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                           CapsLock Deletor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + n  |  Ctrl + Delete (Delete a Word) ;|
;                     CapsLock + m  |  Delete                        ;|
;                     CapsLock + ,  |  BackSpace                     ;|
;                     CapsLock + .  |  Ctrl + BackSpace              ;|
;-----------------------------------o---------------------------------o
CapsLock & u:: Send, {Del}                                           ;|
CapsLock & i:: Send, ^{Del}                                          ;|
CapsLock & o:: Send, ^{BS}                                           ;|
CapsLock & p:: Send,  {BS} 
;---------------------------------------------------------------------o


;=====================================================================o
;                            CapsLock Editor                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + z  |  Ctrl + z (Cancel)             ;|
;                     CapsLock + x  |  Ctrl + x (Cut)                ;|
;                     CapsLock + c  |  Ctrl + c (Copy)               ;|
;                     CapsLock + v  |  Ctrl + z (Paste)              ;|
;                     CapsLock + a  |  Ctrl + a (Select All)         ;|
;                     CapsLock + y  |  Ctrl + y (Yeild)              ;|
;                     CapsLock + w  |  Ctrl + Right(Move as [vim: w]);|
;                     CapsLock + b  |  Ctrls + Left (Move as [vim: b]);|
;-----------------------------------o---------------------------------o
CapsLock & z:: Send, ^z                                              ;|
CapsLock & x:: Send, ^x                                              ;|
CapsLock & c:: Send, ^c                                              ;|
CapsLock & v:: Send, ^v                                              ;|
CapsLock & a:: Send, ^a                                              ;|
CapsLock & y:: Send, ^y                                              ;|
CapsLock & w:: Send, ^{Left}                                        ;|
CapsLock & e:: Send, ^{Right}                                         ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                       CapsLock Media Controller                    ;|
;-----------------------------------o---------------------------------o
;                    CapsLock + F1  |  Volume_Mute                   ;|
;                    CapsLock + F2  |  Volume_Down                   ;|
;                    CapsLock + F3  |  Volume_Up                     ;|
;                    CapsLock + F3  |  Media_Play_Pause              ;|
;                    CapsLock + F5  |  Media_Next                    ;|
;                    CapsLock + F6  |  Media_Stop                    ;|
;-----------------------------------o---------------------------------o
;CapsLock & F1:: Send, {Volume_Mute}                                  ;|
;CapsLock & F2:: Send, {Volume_Down}                                  ;|
;CapsLock & F3:: Send, {Volume_Up}                                    ;|
;CapsLock & F4:: Send, {Media_Play_Pause}                             ;|
;CapsLock & F5:: Send, {Media_Next}                                   ;|
;CapsLock & F6:: Send, {Media_Stop}                                   ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                      CapsLock Window Controller                    ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + s  |  Ctrl + Tab (Swith Tag)        ;|
;                     CapsLock + q  |  Ctrl + W   (Close Tag)        ;|
;               Alt + CapsLock + q  |  Ctrl + Tab (Close Windows)    ;|
;                     CapsLock + g  |  AppsKey    (Menu Key)         ;| 
;-----------------------------------o---------------------------------o
CapsLock & s::Send, ^{Tab}                                           ;|
;-----------------------------------o                                ;|
CapsLock & q::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
{                                                                    ;|
    Send, ^w                                                         ;|
}                                                                    ;|
else {                                                               ;|
    Send, !{F4}                                                      ;|
    return                                                           ;|
}                                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & g:: Send, {AppsKey}                                       ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                        CapsLock Self Defined Area                  ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + d  |  Alt + d(Dictionary)           ;|
;                     CapsLock + f  |  Alt + f(Search via Everything);|
;                     CapsLock + e  |  Open Search Engine            ;|
;                     CapsLock + r  |  Open Shell                    ;|
;                     CapsLock + t  |  Open Text Editor              ;|
;-----------------------------------o---------------------------------o
CapsLock & d:: 
{
SendInput {End}
SendInput +{Home}
SendInput ^+{Left}
SendInput {Delete}
return
} 
                                                                     ;|
CapsLock & f::
{
 Send, ^c
 Sleep 50
 Run, https://www.google.com/search?q=%clipboard%
 Return
}                                      
CapsLock & r:: Run "C:\Program Files\Git\git-bash.exe"   ;|
CapsLock & t:: Run "C:\Program Files\Sublime Text\sublime_text.exe"
;CapsLock & n::   ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                        CapsLock Char Mapping                       ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + ;  |  Enter (Cancel)                ;|
;                     CapsLock + '  |  =                             ;|
;                     CapsLock + [  |  Back         (Visual Studio)  ;|
;                     CapsLock + ]  |  Goto Define  (Visual Studio)  ;|
;                     CapsLock + 1  |  Build and Run(Visual Studio)  ;|
;                     CapsLock + 2  |  Debuging     (Visual Studio)  ;|
;                     CapsLock + 3  |  Step Over    (Visual Studio)  ;|
;                     CapsLock + 4  |  Step In      (Visual Studio)  ;|
;                     CapsLock + 5  |  Stop Debuging(Visual Studio)  ;|
;                     CapsLock + 6  |  Shift + 6     ^               ;|
;                     CapsLock + 7  |  Shift + 7     &               ;|
;                     CapsLock + 8  |  Shift + 8     *               ;|
;                     CapsLock + 9  |  Shift + 9     (               ;|
;                     CapsLock + 0  |  Shift + 0     )               ;|
;-----------------------------------o---------------------------------o
CapsLock & `;:: Send, {Enter}                                        ;|
CapsLock & ':: Send, =                                               ;|
CapsLock & [:: Send, ^-                                              ;|
CapsLock & ]:: Send, {F12}                                           ;|
;-----------------------------------o                                ;|
;-----------------------------------o                                ;|
CapsLock & 1::										; CapsLock & 1
SetTitleMatchMode, 2							; search mode set to 2 (find the phrase anywhere in string)
ifWinActive, Sublime 							; if active window is Sublime Text
{
	WinGetTitle, windowTitle, Sublime 			; get whole window name
	StringGetPos, pos, windowTitle, .m 			; determine where the path is ending and if the file is m-file
	if pos=-1 									; -1 will is returned by StringGetPos if .m is not part of the file name
	{
		MsgBox Opened file is not a m-file.		
	}

	else
	{	
		Send ^s 		 						; Save m-file
		StringLeft, mFileName, windowTitle, pos+2 	; create string containing whole path of the file (+2 to include .m)
        mFileNamef:="run('" mFileName "')"
        Clipboard := mFileNamef
		;Run, %mFileName% 						; open the file in Matlab (way how to get always script window active)
		;Sleep, 100								; wait 100ms to make sure F5 is not "pressed" too early
		;WinActivate, MATLAB R2013b 				;replaced with Sleep.
		;Send {F5} 								; "press" F5 to run the m-file 
	}
}                                                                    ;|
CapsLock & 2:: Send,{F5}                                             ;|
CapsLock & 3:: Send,{F10}                                            ;|
CapsLock & 4:: Send,{F11}                                            ;|
CapsLock & 5:: Send,+{F5}                                            ;|
;-----------------------------------o                                ;|
CapsLock & 6:: Send,+6                                               ;|
CapsLock & 7:: Send,+7                                               ;|
CapsLock & 8:: Send,+8                                               ;|
CapsLock & 9:: Send,+9                                               ;|
CapsLock & 0:: Send,+0                                               ;|
;---------------------------------------------------------------------o

; This autocompletes (), [], "", '',

;Menu, Tray, Icon, expanded_icon.ico, 1, 1

:*?:(::
SendInput, {Raw}()
SendInput, {Left 1} 
return

:*:'::
SendInput, {Raw}''
SendInput, {Left 1}
return

; Bonus :D

:*:sout::
SendInput, System.out.println();{Left 2} 
return

:*?:{::
SendInput, {Raw}{}
SendInput, {Left 1}
return

:*?:[::
SendInput, {Raw}[]
SendInput, {Left 1}
return

:*:<::
SendInput, {Raw}<>
SendInput, {Left 1}
return

:*:"::
SendInput, ""{Left 1}  
return

; This is part of my AutoHotKey [1] script. When you are in Windows Explorer it
; allows you to press Alt+N and type a filename, and that file is created
; in the current directory and opened in the appropriate editor (usually
; [gVim](http://www.vim.org/) in my case, but it will use whatever program is
; associated with the file in Windows Explorer).

; This is much easier than the alternative that I have been using until now:
; Right click > New > Text file, delete default filename and extension (which
; isn't highlighted in Windows 7), type the filename, press enter twice.
; (Particularly for creating dot files like ".htaccess".)

; Credit goes to aubricus [2] who wrote most of this and davejamesmiller [3] who
; added the 'IfWinActive' check and 'Run %UserInput%' at the end. Also to 
; syon [4] who changed regexp to make script work on non-english versions
; of Windows. And I changed the way how script gets full path to make it
; compatible with Windows 10 and also changed hotkey to Alt+N

; [1]: http://www.autohotkey.com/
; [2]: https://gist.github.com/1148174
; [3]: https://gist.github.com/1965432
; [4]: https://github.com/syon/ahk/blob/master/NewFile/NewFile.ahk


; Only run when Windows Explorer or Desktop is active
; Alt+N
#IfWinActive ahk_class CabinetWClass
!SC031::
#IfWinActive ahk_class ExploreWClass
!SC031::
#IfWinActive ahk_class Progman
!SC031::
#IfWinActive ahk_class WorkerW
!SC031::

    ; Get full path from open Explorer window
    WinGetText, FullPath, A

    ; Split up result (it returns paths seperated by newlines)
    StringSplit, PathArray, FullPath, `n
	
	; Find line with backslash which is the path
	Loop, %PathArray0%
    {
        StringGetPos, pos, PathArray%a_index%, \
        if (pos > 0) {
            FullPath:= PathArray%a_index%
            break
        }
    }
	
    ; Clean up result
    FullPath := RegExReplace(FullPath, "(^.+?: )", "")
	StringReplace, FullPath, FullPath, `r, , all


    ; Change working directory
    SetWorkingDir, %FullPath%

    ; An error occurred with the SetWorkingDir directive
    If ErrorLevel
        Return

    ; Display input box for filename
    InputBox, UserInput, New File, , , 400, 100, , , , ,

    ; User pressed cancel
    If ErrorLevel
        Return

    ; Create file
    FileAppend, , %UserInput%

    ; Open the file in the appropriate editor
    ;Run %UserInput%

    Return

#IfWinActive