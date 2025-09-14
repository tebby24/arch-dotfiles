# tebby24's arch linux dots

## setup instructions

### install nessesary packages
```shell
sudo pacman -S firefox git yadm xclip
```

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

### clone the dotfiles

```shell
yadm clone git@github.com:tebby24/linux-dotfiles.git
```


