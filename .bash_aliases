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

# for docker
dcon() { docker exec -i -t $@ /bin/bash ;}
alias dls='docker ps'

alias vim="nvim" # nvim > vim
alias python="python3" # python3 > python
# login to school computers
alias school="sshudson@linux.student.cs.uwaterloo.ca"

# when logged into the school VPN, wato stuff
alias thor="sshudson@vm1.thor.watonomous.ca"
alias delta="sshudson@vm1.delta.watonomous.ca"

