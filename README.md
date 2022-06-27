
## Install Git
```bash 
sudo pacman -S git
```
## Clone Repos
```bash 
cd ~
git clone --recursive https://github.com/stubbornvegeta/wsl_arch_config.git .config
```

## Package Manager Config
```bash
# /etc/pacman.conf
sudo mv pacman /etc/pacman.conf

sudo pacman -Sy
sudo pacman -S archlinuxcn-keyring
```

## Dependences
```bash 
sudo pacman -S neovim zsh oh-my-zsh-git fd ripgrep bat fzf yay ranger tmux gdb
```

