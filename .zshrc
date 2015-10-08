ZSH_THEME="james"

alias gdm="gd master"
alias gcob="gcm && gl && gco -b"
alias gdn="gd --name-only"
alias gdhn="gdh --name-only"
alias gau="ga -u"
alias gpf="gp -f"
alias gpn="gp origin HEAD"
alias gdh="gd HEAD"
alias gh="git rev-parse HEAD | tr -d '\n' | pbcopy"
alias gcam="gc -am"
alias amend="git add . && gc --amend"
alias gam="gau && amend"
alias gds="gd --stat"
alias gcpc="git cherry-pick --continue"
alias gcpa="git cherry-pick --abort"
alias subl="sublime"

alias lrt="ls -lrt"
bindkey -s '^[3' \#

export WORKON_HOME=~/.envs
source /usr/local/bin/virtualenvwrapper.sh
