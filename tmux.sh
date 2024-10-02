#!/bin/bash
abc=''
tmux new-session -s one \; \
  setenv FOO $abc \; \
  send-keys -t 0 "export FOO="$abc C-m \; \
  split-window -v \; \
  send-keys -t 0 'echo $FOO' C-m \; \
  send-keys -t 1 'echo $FOO' C-m
