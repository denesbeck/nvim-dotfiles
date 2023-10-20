# nvim-dotfiles

## Clean

``` bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

## Install

``` bash
git clone --depth 1 https://github.com/denesbeck/nvim-dotfiles.git ~/.config/nvim
nvim
```

## Plugins

[bottom](https://github.com/ClementTsang/bottom)\
[exa](https://the.exa.website/)\
[lazygit](https://github.com/jesseduffield/lazygit)\
[ripgrep](https://github.com/BurntSushi/ripgrep)

## Additional setup

[iTerm2 colorschemes](https://iterm2colorschemes.com/)\
[Fish](https://fishshell.com/)\
[Fisher](https://github.com/jorgebucaran/fisher)

### Fish plugins

[ilancosman/tide@v5](https://github.com/IlanCosman/tide)\
[jethrokuan/z](https://github.com/jethrokuan/z)\
[jorgebucaran/nvm.fish](https://github.com/jorgebucaran/nvm.fish)\
[rbenv/fish-rbenv](https://github.com/rbenv/fish-rbenv)\
[patrickf1/fzf.fish](https://github.com/PatrickF1/fzf.fish)

### ~/.config/fish/config.fish

``` fish
set fish_greeting ""

# nvm setup
set --universal nvm_default_version v18.17.0
nvm use default --silent

# pyenv setup
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

pyenv init - | source

# Aliases
# NeoVim
alias vi "nvim"

# List
alias ll "exa -l --icons --git -h"
alias lla "exa -l --icons --git -h -a"

# Git
alias lg "lazygit"

# Update
alias udt "brew update && brew upgrade && brew cleanup"
```

### ~/.config/tmux/tmux.conf

``` tmux
set-option -sa terminal-overrides ",xterm*:Tc"
set -g mouse on

unbind C-b
set -g prefix C-w
bind C-w send-prefix

# Vim style pane selection
bind h select-pane -L
bind j select-pane -D 
bind k select-pane -U
bind l select-pane -R

# Start windows and panes at 1, not 0
set -g base-index 1
set -g pane-base-index 1
set-window-option -g pane-base-index 1
set-option -g renumber-windows on

# Use Alt-arrow keys without prefix key to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

# Shift arrow to switch windows
bind -n S-Left  previous-window
bind -n S-Right next-window

# Plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'tmux-plugins/tmux-yank'

run '~/.tmux/plugins/tpm/tpm'

# set vi-mode
set-window-option -g mode-keys vi
# keybindings
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi C-v send-keys -X rectangle-toggle
bind-key -T copy-mode-vi y send-keys -X copy-selection-and-cancel

bind '"' split-window -v -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"

source ~/.config/tmux/tokyonight_night.tmux
```
