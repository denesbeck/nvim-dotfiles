# nvim-dotfiles
NeoVim config inspired by [AstroNvim](https://github.com/AstroNvim/AstroNvim) and [devaslife](https://github.com/craftzdog/dotfiles-public).

<img width="1396" alt="nvim_screenshot_2" src="https://github.com/denesbeck/nvim-dotfiles/assets/85183401/98e9f003-a213-4a65-8762-9ecdfb87eff2">
<img width="1396" alt="nvim_screenshot_1" src="https://github.com/denesbeck/nvim-dotfiles/assets/85183401/11d2507e-5acb-42a7-92b5-7dd144cc2911">
<img width="1396" alt="nvim_screenshot_3" src="https://github.com/denesbeck/nvim-dotfiles/assets/85183401/f9a37051-c5ce-4f1f-b671-90e9e65c31bd">

## Clean

```bash
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

## Install

```bash
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

```fish
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

```tmux
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

### iTerm2 profile

```json
{
  "Use Non-ASCII Font": false,
  "Tags": [],
  "Ansi 12 Color": {
    "Red Component": 0.47843137383460999,
    "Color Space": "sRGB",
    "Blue Component": 0.9686274528503418,
    "Alpha Component": 1,
    "Green Component": 0.63529413938522339
  },
  "Ansi 6 Color": {
    "Red Component": 0.49019607901573181,
    "Color Space": "sRGB",
    "Blue Component": 1,
    "Alpha Component": 1,
    "Green Component": 0.81176471710205078
  },
  "Normal Font": "HackNFM-Regular 16",
  "Bold Color": {
    "Red Component": 0.93333333730697632,
    "Color Space": "sRGB",
    "Blue Component": 0.93333333730697632,
    "Alpha Component": 1,
    "Green Component": 0.93333333730697632
  },
  "Link Color": {
    "Red Component": 0.45098039507865906,
    "Color Space": "sRGB",
    "Blue Component": 0.7921568751335144,
    "Alpha Component": 1,
    "Green Component": 0.85490196943283081
  },
  "Transparency": 0.098234915226063826,
  "Ansi 1 Color": {
    "Red Component": 0.9686274528503418,
    "Color Space": "sRGB",
    "Blue Component": 0.55686277151107788,
    "Alpha Component": 1,
    "Green Component": 0.46274510025978088
  },
  "Rows": 35,
  "Default Bookmark": "No",
  "Cursor Guide Color": {
    "Red Component": 0.70213186740875244,
    "Color Space": "sRGB",
    "Blue Component": 1,
    "Alpha Component": 0.25,
    "Green Component": 0.9268307089805603
  },
  "Non-ASCII Anti Aliased": true,
  "Use Bright Bold": true,
  "Ansi 10 Color": {
    "Red Component": 0.61960786581039429,
    "Color Space": "sRGB",
    "Blue Component": 0.41568627953529358,
    "Alpha Component": 1,
    "Green Component": 0.80784314870834351
  },
  "Ambiguous Double Width": false,
  "Jobs to Ignore": ["rlogin", "ssh", "slogin", "telnet"],
  "Ansi 15 Color": {
    "Red Component": 0.75294119119644165,
    "Color Space": "sRGB",
    "Blue Component": 0.96078431606292725,
    "Alpha Component": 1,
    "Green Component": 0.7921568751335144
  },
  "Foreground Color": {
    "Red Component": 0.75294119119644165,
    "Color Space": "sRGB",
    "Blue Component": 0.96078431606292725,
    "Alpha Component": 1,
    "Green Component": 0.7921568751335144
  },
  "Working Directory": "/Users/denesbeck",
  "Blinking Cursor": false,
  "Disable Window Resizing": true,
  "Sync Title": false,
  "Prompt Before Closing 2": false,
  "BM Growl": true,
  "Command": "/usr/local/bin/fish",
  "Description": "Default",
  "Smart Cursor Color": false,
  "Mouse Reporting": true,
  "Screen": -1,
  "Selection Color": {
    "Red Component": 0.20000000298023224,
    "Color Space": "sRGB",
    "Blue Component": 0.48627451062202454,
    "Alpha Component": 1,
    "Green Component": 0.27450981736183167
  },
  "Only The Default BG Color Uses Transparency": true,
  "Columns": 125,
  "Idle Code": 0,
  "Ansi 13 Color": {
    "Red Component": 0.73333334922790527,
    "Color Space": "sRGB",
    "Blue Component": 0.9686274528503418,
    "Alpha Component": 1,
    "Green Component": 0.60392159223556519
  },
  "Custom Command": "Custom Shell",
  "ASCII Anti Aliased": true,
  "Non Ascii Font": "Monaco 12",
  "Vertical Spacing": 1,
  "Use Bold Font": true,
  "Option Key Sends": 2,
  "Selected Text Color": {
    "Red Component": 0.75294119119644165,
    "Color Space": "sRGB",
    "Blue Component": 0.96078431606292725,
    "Alpha Component": 1,
    "Green Component": 0.7921568751335144
  },
  "Background Color": {
    "Red Component": 0.10196078568696976,
    "Color Space": "sRGB",
    "Blue Component": 0.14901961386203766,
    "Alpha Component": 1,
    "Green Component": 0.10588235408067703
  },
  "Character Encoding": 4,
  "Ansi 11 Color": {
    "Red Component": 0.87843137979507446,
    "Color Space": "sRGB",
    "Blue Component": 0.40784314274787903,
    "Alpha Component": 1,
    "Green Component": 0.68627452850341797
  },
  "Use Italic Font": true,
  "Unlimited Scrollback": false,
  "Keyboard Map": {
    "0xf728-0x80000": {
      "Action": 10,
      "Text": "d"
    },
    "0x6b-0x100000-0x28": {
      "Version": 1,
      "Action": 12,
      "Text": "clear\\n",
      "Label": ""
    },
    "0xf702-0x280000": {
      "Action": 10,
      "Text": "b"
    },
    "0xf70d-0x20000": {
      "Action": 10,
      "Text": "[21;2~"
    },
    "0x7f-0x80000": {
      "Action": 11,
      "Text": "0x1b 0x7f"
    },
    "0xf708-0x20000": {
      "Action": 10,
      "Text": "[15;2~"
    },
    "0x33-0x40000": {
      "Action": 11,
      "Text": "0x1b"
    },
    "0xf703-0x260000": {
      "Action": 10,
      "Text": "[1;6C"
    },
    "0xf729-0x20000": {
      "Action": 10,
      "Text": "[1;2H"
    },
    "0xf702-0x260000": {
      "Action": 10,
      "Text": "[1;6D"
    },
    "0x38-0x40000": {
      "Action": 11,
      "Text": "0x7f"
    },
    "0xf72b-0x40000": {
      "Action": 10,
      "Text": "[1;5F"
    },
    "0xf70c-0x20000": {
      "Action": 10,
      "Text": "[20;2~"
    },
    "0xf701-0x260000": {
      "Action": 10,
      "Text": "[1;6B"
    },
    "0x32-0x40000": {
      "Action": 11,
      "Text": "0x00"
    },
    "0xf707-0x20000": {
      "Action": 10,
      "Text": "[1;2S"
    },
    "0xf703-0x240000": {
      "Action": 10,
      "Text": "[1;5C"
    },
    "0xf700-0x260000": {
      "Action": 10,
      "Text": "[1;6A"
    },
    "0xf702-0x240000": {
      "Action": 10,
      "Text": "[1;5D"
    },
    "0xf703-0x300000": {
      "Action": 11,
      "Text": "0x5"
    },
    "0x37-0x40000": {
      "Action": 11,
      "Text": "0x1f"
    },
    "0x3-0x200000": {
      "Action": 11,
      "Text": "0xd"
    },
    "0xf701-0x240000": {
      "Action": 10,
      "Text": "[1;5B"
    },
    "0xf702-0x300000": {
      "Action": 11,
      "Text": "0x1"
    },
    "0xf703-0x220000": {
      "Action": 10,
      "Text": "[1;2C"
    },
    "0xf739-0x0": {
      "Action": 13,
      "Text": ""
    },
    "0xf70b-0x20000": {
      "Action": 10,
      "Text": "[19;2~"
    },
    "0xf728-0x0": {
      "Action": 11,
      "Text": "0x4"
    },
    "0xf706-0x20000": {
      "Action": 10,
      "Text": "[1;2R"
    },
    "0xf700-0x240000": {
      "Action": 10,
      "Text": "[1;5A"
    },
    "0xf702-0x220000": {
      "Action": 10,
      "Text": "[1;2D"
    },
    "0x36-0x40000": {
      "Action": 11,
      "Text": "0x1e"
    },
    "0xf70f-0x20000": {
      "Action": 10,
      "Text": "[24;2~"
    },
    "0xf701-0x220000": {
      "Action": 10,
      "Text": "[1;2B"
    },
    "0xf70a-0x20000": {
      "Action": 10,
      "Text": "[18;2~"
    },
    "0xf729-0x40000": {
      "Action": 10,
      "Text": "[1;5H"
    },
    "0xf72b-0x20000": {
      "Action": 10,
      "Text": "[1;2F"
    },
    "0xf700-0x220000": {
      "Action": 10,
      "Text": "[1;2A"
    },
    "0x30-0x200000": {
      "Action": 12,
      "Text": "0"
    },
    "0xf705-0x20000": {
      "Action": 10,
      "Text": "[1;2Q"
    },
    "0x31-0x200000": {
      "Action": 12,
      "Text": "1"
    },
    "0x33-0x200000": {
      "Action": 12,
      "Text": "3"
    },
    "0x35-0x40000": {
      "Action": 11,
      "Text": "0x1d"
    },
    "0x34-0x200000": {
      "Action": 12,
      "Text": "4"
    },
    "0x32-0x200000": {
      "Action": 12,
      "Text": "2"
    },
    "0x35-0x200000": {
      "Action": 12,
      "Text": "5"
    },
    "0x36-0x200000": {
      "Action": 12,
      "Text": "6"
    },
    "0x37-0x200000": {
      "Action": 12,
      "Text": "7"
    },
    "0x2d-0x40000": {
      "Action": 11,
      "Text": "0x1f"
    },
    "0x38-0x200000": {
      "Action": 12,
      "Text": "8"
    },
    "0x2a-0x200000": {
      "Action": 12,
      "Text": "*"
    },
    "0x39-0x200000": {
      "Action": 12,
      "Text": "9"
    },
    "0x2b-0x200000": {
      "Action": 12,
      "Text": "+"
    },
    "0xf70e-0x20000": {
      "Action": 10,
      "Text": "[23;2~"
    },
    "0x2e-0x200000": {
      "Action": 12,
      "Text": "."
    },
    "0x2d-0x200000": {
      "Action": 12,
      "Text": "-"
    },
    "0xf709-0x20000": {
      "Action": 10,
      "Text": "[17;2~"
    },
    "0x7f-0x100000": {
      "Action": 11,
      "Text": "0x15"
    },
    "0x2f-0x200000": {
      "Action": 12,
      "Text": "/"
    },
    "0xf704-0x20000": {
      "Action": 10,
      "Text": "[1;2P"
    },
    "0x34-0x40000": {
      "Action": 11,
      "Text": "0x1c"
    },
    "0xf703-0x280000": {
      "Action": 10,
      "Text": "f"
    }
  },
  "Window Type": 0,
  "Blur Radius": 24.813976011884982,
  "Cursor Boost": 0,
  "Background Image Location": "",
  "Blur": true,
  "Badge Color": {
    "Red Component": 1,
    "Color Space": "sRGB",
    "Blue Component": 0,
    "Alpha Component": 0.5,
    "Green Component": 0.1491314172744751
  },
  "Scrollback Lines": 1000,
  "Send Code When Idle": false,
  "Close Sessions On End": true,
  "Terminal Type": "xterm-256color",
  "Visual Bell": true,
  "Flashing Bell": false,
  "Scrollback in Alternate Screen": false,
  "Silence Bell": false,
  "Ansi 14 Color": {
    "Red Component": 0.49019607901573181,
    "Color Space": "sRGB",
    "Blue Component": 1,
    "Alpha Component": 1,
    "Green Component": 0.81176471710205078
  },
  "Name": "denesbeck",
  "Cursor Text Color": {
    "Red Component": 0.08235294371843338,
    "Color Space": "sRGB",
    "Blue Component": 0.11764705926179886,
    "Alpha Component": 1,
    "Green Component": 0.086274512112140656
  },
  "Minimum Contrast": 0,
  "Shortcut": "",
  "Cursor Color": {
    "Red Component": 0.75294119119644165,
    "Color Space": "sRGB",
    "Blue Component": 0.96078431606292725,
    "Alpha Component": 1,
    "Green Component": 0.7921568751335144
  },
  "Ansi 0 Color": {
    "Red Component": 0.08235294371843338,
    "Color Space": "sRGB",
    "Blue Component": 0.11764705926179886,
    "Alpha Component": 1,
    "Green Component": 0.086274512112140656
  },
  "Guid": "52A5AE7C-8C7E-4A59-A444-01B7A86E1CBB",
  "Horizontal Spacing": 1,
  "Ansi 3 Color": {
    "Red Component": 0.87843137979507446,
    "Color Space": "sRGB",
    "Blue Component": 0.40784314274787903,
    "Alpha Component": 1,
    "Green Component": 0.68627452850341797
  },
  "Ansi 2 Color": {
    "Red Component": 0.61960786581039429,
    "Color Space": "sRGB",
    "Blue Component": 0.41568627953529358,
    "Alpha Component": 1,
    "Green Component": 0.80784314870834351
  },
  "Right Option Key Sends": 0,
  "Custom Directory": "No",
  "Ansi 7 Color": {
    "Red Component": 0.66274511814117432,
    "Color Space": "sRGB",
    "Blue Component": 0.83921569585800171,
    "Alpha Component": 1,
    "Green Component": 0.69411766529083252
  },
  "Ansi 8 Color": {
    "Red Component": 0.25490197539329529,
    "Color Space": "sRGB",
    "Blue Component": 0.40784314274787903,
    "Alpha Component": 1,
    "Green Component": 0.28235295414924622
  },
  "Ansi 9 Color": {
    "Red Component": 0.9686274528503418,
    "Color Space": "sRGB",
    "Blue Component": 0.55686277151107788,
    "Alpha Component": 1,
    "Green Component": 0.46274510025978088
  },
  "Ansi 4 Color": {
    "Red Component": 0.47843137383460999,
    "Color Space": "sRGB",
    "Blue Component": 0.9686274528503418,
    "Alpha Component": 1,
    "Green Component": 0.63529413938522339
  },
  "Ansi 5 Color": {
    "Red Component": 0.73333334922790527,
    "Color Space": "sRGB",
    "Blue Component": 0.9686274528503418,
    "Alpha Component": 1,
    "Green Component": 0.60392159223556519
  }
}
```
