alias tls="tmux ls"
alias cls="conda env list"
alias ta="tmux attach -t"
alias rebash="source ~/.bashrc"
alias nv="watch -n 0.1 nvidia-smi"
# good for finding processes that need to be killed
alias tasks="ps -aux | grep"
alias ca="conda activate"
alias py3="python3"
alias gs="git status"
alias gcam="git commit -am "
alias cd..="cd .."
alias cp="cp -r"
alias rm="rm -r"

# for docker
dcon() { docker exec -i -t $@ /bin/bash ;}
alias dls='docker ps'

alias vim="nvim" # nvim > vim
alias v="nvim" # nvim > vim
alias python="python3" # python3 > python
# login to school computers
alias school="sshudson@linux.student.cs.uwaterloo.ca"
