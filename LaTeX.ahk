; AutoHotkey macros for MathJax
;
; the * option at the start of a hotstring tells AHK not to wait
; for a closing character to consider the hotstring activated


; type \\o to write \overline{} and put the cursor within the {}
;
:*:\\o::\overline{{}{}}{left 1}
:*:\\t::\text{{}{}}{left 1}
