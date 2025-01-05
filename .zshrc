# VPN
alias tor-on='networksetup -setsocksfirewallproxystate wi-fi on'
alias tor-off='networksetup -setsocksfirewallproxystate wi-fi off'
# alias dpi-on='networksetup -setwebproxystate wi-fi on'
# alias dpi-off='networksetup -setwebproxystate wi-fi off'


# npm
export NODE_NO_WARNINGS=1


# Recursome i have no idea stuff
setopt globstarshort


# GPG
GPG_TTY=$(tty)
export GPG_TTY


# Java
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
# export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
# export JAVA_HOME="$(/usr/libexec/java_home)"


# Trivy
alias check-sec='docker run -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy image'


# Gradle
# export PATH="$PATH:/opt/gradle/gradle-8.7/bin"


# Homebrew
export PATH="/opt/homebrew/bin:$PATH"
export CPATH="/opt/homebrew/include"
export LIBRARY_PATH="/opt/homebrew/lib"


# ???
zle -N gitpull
bindkey '^gp' gitpull


# Git prompt
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1


# Pretty prompt
autoload -U colors && colors
setopt PROMPT_SUBST
PS1='%F{cyan}%13>~>%c%>>%f%B$(__git_ps1 " %s")%b $ '


# Git autocomplete
autoload -Uz compinit && compinit


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --follow --hidden'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_DEFAULT_OPTS='--color=info:#5f5f5f,prompt:cyan,gutter:-1,pointer:cyan,bg+:-1,hl+:green'


# fzf-tab
autoload -U compinit; compinit
source ~/fzf-tab/fzf-tab.plugin.zsh


# fzf completion
source ~/fzf-tab-completion/zsh/fzf-zsh-completion.sh


# Vim moves
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BLOCK
ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BEAM
ZVM_MODE_VISUAL_CURSOR=$ZVM_CURSOR_BLINKING_UNDESCORE
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj


# NeoVim aliases
alias vi='nvim'
alias vi\ .='nvim .'
alias vim='nvim'
alias vim\ .='nvim .'


# Git aliases
alias clone='git clone'
alias status='git status'
alias atree='git worktree add'
alias ltree='git worktree list'
alias rtree='git worktree remove'
alias newb='git checkout -b'
alias pull='git fetch && git pull origin'
alias push='git push -u origin HEAD'
alias hard='git fetch && git reset --hard origin'
alias switch='git switch'
alias fetch='ls | xargs -P10 -I{} git -C {} pull'
alias rebase='git merge -s ours'
alias fast-forward='git push -ff origin HEAD'


# Aspell aliases
alias check='aspell check'


# Misc. aliases
alias clean='cd && history -p && rm -f ~/.zsh_history && clear'
alias curl='curl -s -w "%{http_code}\n"'
alias ls='ls -F -a'
alias conf='nvim ~/.zshrc'
# alias subl.='subl .'
alias viconf='cd ~/.config/nvim && nvim . && cd -'
alias gitconf='nvim ~/.gitconfig'
alias ghosttyconf='nvim ~/.config/ghostty/config'
# alias tmuxconf='nvim ~/.config/tmux/.tmux.conf'


# Syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Python 3 as default
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# LLVM
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"


# tmux
# if [ "$TMUX" = "" ]; then tmux a || tmux new; fi
# eval "$(tmux source ~/.config/tmux/.tmux.conf)"


# zoxide
eval "$(zoxide init --cmd cd zsh)"


# iTerm
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# iterm2_print_user_vars() {
#   iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
# }


# Go
export GOPATH=$HOME/go
export PATH="$HOME/go/bin:$PATH"


# bat
export BAT_THEME="Dracula"
alias cat='bat'


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# bun completions
[ -s "/Users/okamiraner/.bun/_bun" ] && source "/Users/okamiraner/.bun/_bun"
