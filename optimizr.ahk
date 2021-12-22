; AutoHotkey macros to emulate some of the keys from the Optimizr keyboard by Matias (discontinued)
; https://matias.ca/optimizer/
;
; This uses the CapsLock key to modify some keys on and around the home row
; so you don't have to move your right hand off the home row just to move around
;
; For example, CapsLock+d is the same as pressing Ctrl-Left to move left a word
;
; Assumes Dvorak layout to match the physical locations on the Optimizr keyboard
;

SendMode Input

; arrow keys
CapsLock & c::Send {Up}
CapsLock & t::Send {Down}
CapsLock & h::Send {Left}
CapsLock & n::Send {Right}

; navigation keys
CapsLock & r::Send {PgUp}
CapsLock & v::Send {PgDn}
CapsLock & g::Send {Home}
CapsLock & b::Send {End}

; word left/right
CapsLock & d::Send ^{Left}
CapsLock & -::Send ^{Right}
