#!/usr/bin/env sh

# Plugin homepage: https://github.com/kratocz/tmux-kratocz

# -- from: https://github.com/ddollar/tmux/blob/master/examples/screen-keys.conf ----

# $Id: screen-keys.conf,v 1.7 2010/07/31 11:39:13 nicm Exp $
#
# By Nicholas Marriott. Public domain.
#
# This configuration section binds many of the common GNU screen key bindings to
# appropriate tmux key bindings. Note that for some key bindings there is no
# tmux analogue and also that this set omits binding some commands available in
# tmux but not in screen.

# Set the prefix to ^A.
#tmux unbind C-b
tmux set -g prefix ^A
tmux bind a send-prefix

# Bind appropriate commands similar to screen.
# lockscreen ^X x
tmux unbind ^X
tmux bind ^X lock-server
tmux unbind x
tmux bind x lock-server

# screen ^C c
tmux unbind ^C
tmux bind ^C new-window
tmux unbind c
tmux bind c new-window

# detach ^D d
tmux unbind ^D
tmux bind ^D detach

# displays "*"
tmux unbind "*"
tmux bind "*" list-clients

# next ^@ ^N sp n
tmux unbind ^@
tmux bind ^@ next-window
tmux unbind ^N
tmux bind ^N next-window
tmux unbind " "
tmux bind " " next-window
tmux unbind n
tmux bind n next-window

# title A
tmux unbind A
tmux bind A command-prompt "rename-window %%"

# other ^A
tmux unbind ^A
tmux bind ^A last-window

# prev ^H ^P p ^?
tmux unbind ^H
tmux bind ^H previous-window
tmux unbind ^P
tmux bind ^P previous-window
tmux unbind p
tmux bind p previous-window
tmux unbind BSpace
tmux bind BSpace previous-window

# windows ^W w
tmux unbind ^W
tmux bind ^W list-windows
tmux unbind w
tmux bind w list-windows

# quit "\\"
tmux unbind "\\"
tmux bind "\\" confirm-before "kill-server"

# kill K k
tmux unbind K
tmux bind K confirm-before "kill-window"
tmux unbind k
tmux bind k confirm-before "kill-window"

# redisplay ^L l
tmux unbind ^L
tmux bind ^L refresh-client
tmux unbind l
tmux bind l refresh-client

# split -v "|"
tmux unbind "|"
tmux bind "|" split-window

# :kB: focus up
tmux unbind Tab
tmux bind Tab select-pane -t:.+
tmux unbind BTab
tmux bind BTab select-pane -t:.-

# " windowlist -b
tmux unbind '"'
tmux bind '"' choose-window

# -- Additional modifications --

# Allow to escape the copy-mode (opened by <prefix> [) by not only Escape, but also by BSpace
tmux bind-key -T copy-mode Escape send-keys -X cancel
tmux bind-key -T copy-mode BSpace send-keys -X cancel
