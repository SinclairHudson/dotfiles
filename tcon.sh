#!/usr/bin/env sh

# create a session with five panes
tmux new-session -d -s work -c "/home/sinclair/Documents/untether/ml-framework"
tmux split-window -c "/home/sinclair/Documents/untether/ml-framework" -t work:0
tmux split-window -h -c "/home/sinclair/Documents/untether/ml-framework" -t work:0 "poetry shell"

tmux attach -t work
