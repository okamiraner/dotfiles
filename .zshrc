# Homebrew fix
export PATH="/opt/homebrew/bin:$PATH"


# Git prompt
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1


# Pretty prompt
autoload -U colors && colors
setopt PROMPT_SUBST
PS1='%F{red}%13>~>%c%>>%f%B$(__git_ps1 " %s")%b $ '


# Git autocomplete
autoload -Uz compinit && compinit


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --strip-cwd-prefix --hidden --follow'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
source ~/fzf-tab/fzf-tab.plugin.zsh


# Vim fu
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BLOCK
ZVM_NORMAL_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BEAM
ZVM_MODE_VISUAL_CURSOR=$ZVM_CURSOR_BLINKING_BEAM
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj


# NeoVim aliases
alias vi='nvim'
alias vi.='nvim .'
alias vim='nvim'
alias vim\ .='nvim .'


# Python aliases
alias python=/opt/homebrew/bin/python3.12


# Git aliases
alias clone='git clone'
alias status='git status'
alias atree='git worktree add'
alias ltree='git worktree list'
alias rtree='git worktree remove'
alias newb='git checkout -b'
alias pull='git fetch && git pull origin'
alias push='git add . && git commit -m "upd" && git push -u origin HEAD'
alias hard='git reset --hard origin'
alias switch='git switch'
alias fetch='ls | xargs -P10 -I{} git -C {} pull'
alias tmuxconf='nvim ~/.config/tmux/.tmux.conf'


# Aspell aliases
alias check='aspell check'


# Misc. aliases
alias ls='ls -F -a'
alias conf='nvim ~/.zshrc'
alias subl='subl -n'
alias subl.='subl .'
alias viconf='cd ~/.config/nvim && nvim . && cd -'


# Fuzzy finder completion
source $(brew --prefix fzf)/shell/completion.zsh


# Syntax highlighting for zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
