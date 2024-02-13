alias __lsp="ls --color=never --icons=never"
alias cat="bat"
alias vpnon="wg-quick up Surface"
alias vpnoff="wg-quick down Surface"
alias htop="btop"
alias cd="z" 
alias ls="exa -g --oneline --icons --color=always"
alias la="exa -g --long --all --group --color=always"
alias tree="exa -g --tree --color=always"

function ffh()
{
    DIR=$(find ~/** -type d | fzf)
    if [[ $? == 0 ]]; then
        cd $DIR
    fi
}