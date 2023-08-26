# zsh settings
setopt AUTO_PUSHD

# zsh auto completions

fpath=(/Users/cjeon/scripts/zsh-completions/src $fpath)

autoload -Uz compinit && compinit

# custom binaries / scripts
export PATH="/Users/cjeon/scripts":"$PATH"
export PATH="/Users/cjeon/bin":"$PATH"
export PATH="/Users/cjeon/homebrew/bin":"$PATH"

# vscode commands

export VSCODE_HOME="/goinfre/cjeon/newhome/vscode"
export PATH="$VSCODE_HOME/Visual Studio Code.app/Contents/Resources/app/bin":"$PATH"

# aliases

alias ls='ls -G'
alias ll='ls -lh'

alias grep='grep --color=auto'

alias dum='du -d 1 -h 2>/dev/null | grep -E "^(\d|.)+M\s" | sort -n'
alias dug='du -d 1 -h 2>/dev/null | grep -E "^(\d|.)+G\s" | sort -n'

alias qemu='qemu-system-x86_64'
alias view='vim -m +"set buftype=nofile" +"noremap q :quit<CR>"'

alias pdf='code ~/pdf'

# alias.typo

alias sl='ls'
alias dc='cd'
alias meak='make'
alias cdoe='code'

# man pager
export MANPAGER="vim -M +MANPAGER -"

# rust
export RUSTUP_HOME="/goinfre/cjeon/newhome/.rustup"
export CARGO_HOME="/goinfre/cjeon/newhome/.cargo"
export CARGO_ENV=$CARGO_HOME"/env"

test -f "$CARGO_ENV" && source "$CARGO_ENV"

# qemu
export SELECTED_VM='/Users/cjeon/goinfre/vmroot/run2/test.sh' 

alias vm="$SELECTED_VM"

# kfs
export I386_GRUB2_PREFIX='/Users/cjeon/homebrew'

# homebrew
export HOMEBREW_NO_EMOJI=1

