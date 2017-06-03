# GIT


alias ga='git add'
alias gaf='git add -f'
alias gap='git add --patch'
alias gb='git branch -v'
alias gba='gb -avv'
alias gc='git commit -v'
alias gca='gc -a'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git pull -v'
alias glr='git pull -v --rebase'
alias gg="git log --graph --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %C(bold)%s %Creset%C(white)%cn%Creset %C(green)%cr' --abbrev-commit --date=relative"
alias gp='git push -v'
alias ggrep='git grep'
alias gst='git status -s'
alias gr='git grep'
alias gfa='git fetch --all'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'
alias gls='git ls-files'
alias gbav='git for-each-ref --shell --format="echo %(refname:short) && git lg -n 1 %(refname)" refs/ |sh'

# COLOR

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# LS
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
