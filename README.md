# tebby24's arch linux dots
dotfiles for an arch linux xfce desktop environment

includes configuration for:
- xfce4
- zsh
- alacritty
- tmux
- neovim 

## setup instructions
must be performed for each user on the machine

### install nessesary packages
```shell
sudo pacman -S git yadm 
```

### clone the dotfiles

```shell
yadm clone git@github.com:tebby24/arch-dotfiles.git
```



## other configuration

### setup ssh key with github

generate an ssh key
```shell
ssh-keygen -t ed25519 -C "enterted@gmail.com"
```

copy the public key to your clipboard
```shell
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
```
navigate to https://github.com/settings/ssh/new

title the SSH key: _hostname (username)_

determine your machine's hostname with `cat /etc/hostname`

