# nvim-dotfiles

## Clean
```
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim
```

## Install
```
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
[patrickf1/fzf.fish](https://github.com/PatrickF1/fzf.fish)

### ~/.config/fish/config.fish
```
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
