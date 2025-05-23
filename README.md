# tmux-screen

This is a tmux plugin defining `screen` key bindings.

### Requirements

* tmux

### Features

* `screen` key bindings copied from the file [examples/screen-keys.conf](https://github.com/ddollar/tmux/blob/ac408631381ab8568e6a1dadb0db9656ea6faac9/examples/screen-keys.conf) in the GitHub project [ddollar/tmux](https://github.com/ddollar/tmux)

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) or [gpakosz/.tmux](https://github.com/gpakosz/.tmux) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf` (or to `.tmux.conf.local` if you use [gpakosz/.tmux](https://github.com/gpakosz/.tmux)):

```tmux
set -g @plugin 'kratocz/tmux-screen'
```

### Ctrl+A

Optinally you can also set **Ctrl+A** to work as the prefix key too (it's **Ctrl+B** by default in tmux), so you will have in your config file these additional lines:

```tmux
set -g @plugin 'kratocz/tmux-screen'
set -g prefix C-a
```

Hit `prefix + I` to fetch the plugin and source it. That's it!

### Manual Installation

Clone the repo:

    $ git clone https://github.com/kratocz/tmux-screen ~/clone/path

Add this line to the bottom of `.tmux.conf` (or to `.tmux.conf.local` if you use [gpakosz/.tmux](https://github.com/gpakosz/.tmux)):

```tmux
run-shell ~/clone/path/screen.tmux
```

Reload TMUX environment with `$ tmux source-file ~/.tmux.conf`, and that's it.

