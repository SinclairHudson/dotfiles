#!/usr/bin/env sh
set -e

u="$USER"
workingdir="src/perception-year-2/"  # where do you want to start deveopment?
display=":1"  # this differs user to user

# make sure everything's closed
bash ~/wato_docker_ws/scripts/stop-dev-containers.sh
# start docker containers
bash ~/wato_docker_ws/scripts/start-dev-containers.sh

tmux new-session -d -s wato -c "/home/$u/wato_docker_ws/$workingdir"

tmux split-window -c "/home/$u/wato_docker_ws/$workingdir" -t wato:0
tmux split-window -h -c "/home/$u/wato_docker_ws/src/$workingdir" -t wato:0 "docker exec -it $u-dev /bin/bash"

tmux new-window -a -t wato:0 "docker exec -it $u-dev /bin/bash"
tmux split-window -t wato:1 "docker exec -it $u-dev /bin/bash"
tmux split-window -h -t wato:1 "docker exec -it $u-dev /bin/bash"

# this is the compiling window
tmux send-keys -t wato:0.bottom-right "catkin build" Enter

# launch carla in the dev docker (sleep for a bit to let everything initialize)
tmux send-keys -t wato:1.bottom-left "export DISPLAY=$display && sleep 10" Enter
tmux send-keys -t wato:1.bottom-left "roslaunch carla_config carla.launch host:=$u-carla" Enter

# open this pane to the carla scenarios, to control carla through python
tmux send-keys -t wato:1.bottom-right "cd src/carla_config/scripts/scenario && ls" Enter

# prepare the command that launches the perception stack, but don't execute it
tmux send-keys -t wato:1.top "export DISPLAY=$display" Enter
tmux send-keys -t wato:1.top "roslaunch perception perception-carla.launch"

# set up my dev environment
tmux send-keys -t wato:0.top "nvim" Enter
tmux send-keys -t wato:0.bottom-left "git status" Enter

tmux attach -t wato:0
