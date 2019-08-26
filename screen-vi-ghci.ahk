; AutoHotkey macros for my screen/vi/ghci workflow

; Generic filenames common to most haskell projects
::''m::app/Main.hs
::''t::test/Spec.hs

; Leave vim insert mode and save all modified files
#w::
  Send {Escape}:wa{Enter}
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
