; AutoHotkey macros to emulate some of the keys from the Optimizr keyboard by Matias (discontinued)
; https://matias.ca/optimizer/
;
; This uses the CapsLock key to modify some keys on and around the home row
; so you don't have to move your right hand off the home row just to move around
;
; Recent versions of AutoHotkey leave the CapsLock key on after using these shortcuts.
; It works properly with version 1.1.24.05 (the CapsLock key doesn't stay on)
;
; For example, CapsLock+h is the same as pressing Ctrl-Left to move left a word
;

SendMode Input

; arrow keys
CapsLock & i::Send {Up}
CapsLock & k::Send {Down}
CapsLock & j::Send {Left}
CapsLock & l::Send {Right}

; navigation keys
CapsLock & o::Send {PgUp}
CapsLock & >::Send {PgDn}
CapsLock & u::Send {Home}
CapsLock & n::Send {End}

; word left/right
CapsLock & h::Send ^{Left}
CapsLock & '::Send ^{Right}

; other
CapsLock & Space::Send {Enter}
CapsLock & p::Send {Del}
CapsLock & `;::Send {Escape}

; delete word left/right
CapsLock & Backspace::Send ^{Backspace}
CapsLock & -::Send ^{Del}

