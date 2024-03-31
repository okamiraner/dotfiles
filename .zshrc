# Java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export JAVA_HOME="$(/usr/libexec/java_home)"


# Gradle
export PATH="$PATH:/opt/gradle/gradle-8.7/bin"


# Homebrew
export PATH="/opt/homebrew/bin:$PATH"
export CPATH="/opt/homebrew/include"
export LIBRARY_PATH="/opt/homebrew/lib"


# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


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

# fzf colors
export FZF_DEFAULT_OPTS='
  --color=info:#6272A4,prompt:#6272A4,gutter:-1,pointer:red,bg+:-1,border:#6272A4,hl+:green
'

# fzf completion
source $(brew --prefix fzf)/shell/completion.zsh


# Vim moves
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


# Aspell aliases
alias check='aspell check'


# Misc. aliases
alias ls='ls -F -a'
alias conf='nvim ~/.zshrc'
alias subl='subl -n'
alias subl.='subl --launch-or-new-window .'
alias viconf='cd ~/.config/nvim && nvim . && cd -'
alias gitconf='nvim ~/.gitconfig'
alias tmuxconf='nvim ~/.config/tmux/.tmux.conf'


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
if [ "$TMUX" = "" ]; then tmux a || tmux new; fi
eval "$(tmux source ~/.config/tmux/.tmux.conf)"

