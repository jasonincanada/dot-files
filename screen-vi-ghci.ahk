; AutoHotkey macros for my screen/vi/ghci workflow

; Generic filenames common to most haskell projects
::''m::app/Main.hs
::''t::test/Spec.hs

; Leave vim insert mode and save all modified files
#w::
  Send {Escape}:wa{Enter}
Return

; Leave vim insert mode, save all, drop to shell and run sb (stack build), queue up !?exec
#s::
  Send {Escape}:wa{Enter}
  Sleep 200
  Send ^z
  Send sb{Enter}
  Send {!}?exec
Return

; Leave vim insert mode and reflow the paragraph to our textwidth settings
#g::
  Send {Escape}
  Send gqip
Return

; Swap to previous screen window
#n::
  Send ^an
Return

; Reload file in ghci
#r::
  Send :r{Enter}
Return

; Enter screen's copy mode and send cursor to top of screen
#c::
  Send ^a[
  Send H
Return

; Start a screen session with logging on screen 0 and a bash session on 1
::go-screen::

  ; Start screen
  ; Assumes you're at a linux prompt at the root path for your session
  Send screen{Enter}

  ; Click past the intro screen
  Send {Enter}

  ; Start logging on screen 0 (good for dev sessions, use screen 0 for everything except
  ; actually editing source code)
  Send ^a:log
  Send {Enter}
  Sleep 500

  ; Write out the current date to log this session's start time
  Send {#} Starting screen session...{Enter}
  Send date{Enter}

  ; Start new screen 1
  Send ^ac

Return

