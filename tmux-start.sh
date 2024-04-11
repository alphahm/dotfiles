#!/usr/bin/env bash

session="dev"

tmux new-session -d -s $session

# C-m is Ctr-m, control character for carriage return
window=1
tmux rename-window -t $session:$window 'my-app'
tmux send-keys -t $session:$window 'cd ~/Projects/my-app' C-m
tmux send-keys -t $session:$window 'vim .' C-m

window=2
tmux new-window -t $session:$window -n 'my-python-app'
tmux send-keys -t $session:$window 'cd ~/Projects/my-python-app' C-m
tmux send-keys -t $session:$window 'source venv/bin/activate' C-m
tmux send-keys -t $session:$window 'python app.py' C-m

tmux attach-session -t $session
