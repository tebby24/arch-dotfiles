# tebby24's archlinux dots

### setup instructions

get a web browser
```shell
sudo pacman -S firefox
```

generate an ssh key
```shell
ssh-keygen -t ed25519 -C "enterted@gmail.com"
```

copy the public key to your clipboard
```shell
sudo pacman -S xclip
xclip -selection clipboard < ~/.ssh/id_ed25519.pub
```
navigate to https://github.com/settings/ssh/new
title the SSH key: _hostname (username)_
determine your machine's hostname with `cat /etc/hostname`

to get the dotfiles, first install yadm
```shell
sudo pacman -S yadm
```

