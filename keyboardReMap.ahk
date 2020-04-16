; ^ Ctrl
; ! Alt
; + Shift
; # Win 

;#SingleInstance force    ; 이 스크립트의 중복실행을 금지시킴
SetScrollLockState, off   ; 항상 Scrolllock off 상태로 시작
SetCapsLockState, Off     ; 항상 CapsLockState off 상태로 시작

; AppsKey & Arrow
AppsKey & Up::Send, #{Up}       ; win + up
AppsKey & Down::Send, #{Down}   ; win + down
AppsKey & Left::Send, #{Left}   ; win + left
AppsKey & Right::Send, #{Right} ; win + right

; AppsKey & PageKey
AppsKey & Insert::Send, ^a      ; ctrl + a
AppsKey & Home::Send, ^z        ; ctrl + z
AppsKey & PGUP::Send, ^s        ; ctrl + s
AppsKey & Delete::Send, ^x      ; ctrl + x
AppsKey & End::Send, ^c         ; ctrl + c
AppsKey & PGDN::Send, ^v        ; ctrl + v
AppsKey & Numpad1::Send, ^f     ; ctrl + f

; NumpadIns(0)
NumpadIns & NumpadEnd::Run, Chrome.exe "https://ezwebmail.bizmeka.com/mail/list.do?_entityId=ezwebmail.bizmeka.com"      ; bizmeka
NumpadIns & NumpadDown::Run, %windir%\system32\notepad.exe                              ; notepad
NumpadIns & NumpadPgdn::Run, %windir%\system32\SnippingTool.exe                         ; 
NumpadIns & NumpadLeft::Run, Chrome.exe "";

; AppsKey & Mouse
AppsKey & LButton::Send, {Browser_Back}                                 ; Browser Back
AppsKey & RButton::Send, {Browser_Forward}                              ; Browser Forward
AppsKey & WheelUp::Send, {CtrlDown}{LWinDown}{left}{LWinUp}{CtrlUp}     ; vitual Desktop Back
AppsKey & WheelDown::Send, {CtrlDown}{LWinDown}{Right}{LWinUp}{CtrlUp}  ; vitual Desktop Forward
AppsKey & MButton::Send, {LWinDown}{Tab}{LWinUp}                        ; vitual Desktop Summary

; AppsKey & Etc
AppsKey & BackSpace::AltTab
AppsKey & [::Send, #^{Left}
AppsKey & ]::Send, #^{Right}

; ★ CapsLock ★
CapsLock & BackSpace::Send, {Delete}    ; Delete
CapsLock & space::Send, {vk15sc138}     ; 한영전환

; Arrow
CapsLock & i::Send, {up}
CapsLock & j::Send, {left}
CapsLock & k::Send, {down}
CapsLock & l::Send, {right}
CapsLock & y::Send, {PgUp}
CapsLock & h::Send, {PgDn}
CapsLock & u::Send, {Home}
CapsLock & o::Send, {End}
CapsLock & /::Send, ^f

CapsLock & d::Send, {End}{ShiftDown}{Home}{Shift Up}{Backspace 1}        ; remove line

CapsLock & 7::Send, {ShiftDown}{left}{ShiftUp}
CapsLock & 8::Send, {ShiftDown}{Right}{ShiftUp}
CapsLock & 9::Send, {ShiftDown}{CtrlDown}{Left}{CtrlUp}{ShiftUp}
CapsLock & 0::Send, {ShiftDown}{CtrlDown}{Right}{CtrlUp}{ShiftUp}

;ShiftDown
;~Space & n::Click, 2
;~Space & m::Send, {BackSpace}
;~Space & ,::Send, {BackSpace}



; ★ Hot String ★
#IfWinActive
:*:azg ::
Send, azilang2@gmail.com
return

;전각문자-----------------------------------------------------------
#IfWinActive
~` & 0::
Send, {BackSpace}○
return

#IfWinActive
~` & 8::
Send, {BackSpace}★
return

#IfWinActive
~` & 5::
Send, {BackSpace}※
return

#IfWinActive
~` & ^::
Send, {BackSpace}△
return
; --------------------------------------------


#IfWinActive
~` & 1::
Send, {BackSpace}{Enter}
return

; --------------------------------------------
#IfWinActive
~` & 2::MouseClick
return

#IfWinActive
+^i::MouseMove, 0,-15,,R
+^j::MouseMove, -15,0,,R
+^k::MouseMove, 0,15,,R
+^l::MouseMove, 15,0,,R
;MouseClick, left, , , 2
return


; ★ ------- Return ------- ★
return
