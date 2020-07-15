set PATH $PATH $HOME/Go/bin
alias vi=nvim
alias 2="conda activate"
alias fcfg="vi ~/.config/fish/config.fish"
alias vcfg="vi ~/.nvim/init.vim"
alias sl="spatialite"
alias lab="2 note;jupyter lab"
alias vf="vi (fzf --height 40%)"

starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
