alias tls="tmux ls"
alias cls="conda env list"
alias ta="tmux attach -t"
alias rebash="source ~/.bashrc"
alias nv="watch -n 0.1 nvidia-smi"
# good for finding processes that need to be killed
alias tasks="ps -aux | grep"
alias ca="conda activate"
alias py3="python3"

#login to school computers
alias sshs="ssh -X sshudson@linux.student.cs.uwaterloo.ca"

#when logged into the school VPN, wato stuff
alias wato3='ssh -X -L 8889:localhost:8889 sshudson@129.97.228.192'
alias wato2='ssh -X -L 8889:localhost:8889 sshudson@129.97.228.191'
alias rugged='ssh -X -L 8889:localhost:8889 sshudson@wato-rugged.uwaterloo.ca'

# for huawei coop
alias comp7='ssh -X s84152660@10.193.192.89'
alias ehsan='ssh -X coop@10.213.17.119'
