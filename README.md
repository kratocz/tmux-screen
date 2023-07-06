# tmux-kratocz

This is a tmux plugin defining my favorite key bindings.

### Requirements

* tmux

### Features

* screen key bindings from https://github.com/ddollar/tmux/blob/ac408631381ab8568e6a1dadb0db9656ea6faac9/examples/screen-keys.conf
* Both shortcuts work as prefix: ^A and ^B


### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) or [gpakosz/.tmux](https://github.com/gpakosz/.tmux) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```tmux
set -g @plugin 'kratocz/tmux-kratocz'
```

Hit `prefix + I` to fetch the plugin and source it. That's it!

### Manual Installation

Clone the repo:

    $ git clone https://github.com/kratocz/tmux-kratocz ~/clone/path

Add this line to the bottom of `.tmux.conf`:

```tmux
run-shell ~/clone/path/kratocz.tmux
```

Reload TMUX environment with `$ tmux source-file ~/.tmux.conf`, and that's it.

