# zsh settings
setopt AUTO_PUSHD

# custom binaries / scripts
export PATH="/Users/cjeon/scripts":"$PATH"
export PATH="/Users/cjeon/bin":"$PATH"
export PATH="/Users/cjeon/homebrew/bin":"$PATH"

# vscode commands
export PATH="/Users/cjeon/goinfre/newhome/vscode/Visual Studio Code.app/Contents/Resources/app/bin":"$PATH"

# aliases
alias ls='ls -G'
alias sl='ls'
alias ll='ls -lh'

alias grep='grep --color=auto'

alias dc='cd'

alias dum='du -d 1 -h | grep -E "^(\d|.)+M\s" | sort -n'
alias dug='du -d 1 -h | grep -E "^(\d|.)+G\s" | sort -n'

alias qemu='qemu-system-x86_64'

# man pager
export MANPAGER="vim -M +MANPAGER -"

# rust
export RUSTUP_HOME="/goinfre/cjeon/.rustup"
export CARGO_HOME="/goinfre/cjeon/.cargo"
export CARGO_ENV=$CARGO_HOME"/env"

test -f "$CARGO_ENV" && source "$CARGO_ENV"

# qemu
export SELECTED_VM='/Users/cjeon/goinfre/vmroot/run2/test.sh' 

alias vm="$SELECTED_VM"

# kfs
export I386_GRUB2_PREFIX='/Users/cjeon/homebrew'

# homebrew
export HOMEBREW_NO_EMOJI=1
