Dotfiles

neovim:

- Install packer first (AUR package in arch via yay
- Intall ripgrep or else the one command wont work
- Null-ls?

i3:

- Picom needed?
- background image needed
- hotkeys for discord/brave/obsidian/kitty

tmux:

- This one pretty straightforward I think

zshrc:

- Need ohmyzsh, can't remember how i did this one lol
- Powerlevel10k install is through ohmyzsh, check documentation
- Installed the necessary fonts by downloading ttfs from powerlevel10k git and using [this guide](https://www.unixtutorial.org/how-to-install-ttf-fonts-in-linux/).

- Following commands for installing the plugins:
  - `$git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
  - `$git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
- Then activate them by modifying line zshrc to `plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)`
