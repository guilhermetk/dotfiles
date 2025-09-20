set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH
set -gx PATH $PATH $HOME/go/bin

set -U fish_greeting


bind -M insert ctrl-y accept-autosuggestion

zoxide init fish | source
atuin init fish | source

alias ls="eza -l --icons"
alias lss="ls -TAL 2"
alias lsss="ls -TAL"
alias cat="bat"

fish_vi_key_bindings
