
# full directory listings
alias lr='ls -latr'

# git commands
alias gco='git commit -m'
alias ga='git add'
alias gd='git diff'
alias gdf='git diff $file'
alias gs='git status'

# general editing workflow
alias v='vim'
alias va='vim app/Main.hs'
alias vf='vim $file'
alias hf='hlint $file'

# hakyll shortcuts
alias sb='stack build'
alias st='stack test'
alias sesr='stack exec Site rebuild'
alias sesw='stack exec Site watch'

# misc
alias du1='du --max-depth=1'

# hide extraneous details in df
alias dfx='df -h -x squashfs -x tmpfs'

# sqlite3
alias sql='sqlite3 square-game.db'

# square-game
alias board="stack exec square-game-exe"

# set ed's command prompt
alias ed="ed -p\"ed> \""
