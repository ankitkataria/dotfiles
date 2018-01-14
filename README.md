# Dotfiles
_Not the most aesthetic_

### Setup

1. Run `installrc.sh`

2. Paste the following line in `.zshrc` if not already present
```
alias config='/usr/bin/git --git-dir="$HOME/.cfg" --work-tree=$HOME'
```

### Configs included: 

- [i3](./.i3)
- [tmux](./.tmux.conf)
- uses [green.theme](https://github.com/cmus/cmus/blob/master/data/green.theme) for cmus
- uses [Soliah](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/Soliah.zsh-theme) for [zsh](./zshrc) 
- [dircolors](./.dircolors)
- [terminator](./.config/terminator/config)
- miscellaneous scripts for managing [multiple monitors](./bin/monitor) and [battery status](./bin/battstatus.sh) in i3

### Screenshots

![Terminal](./screenshots/terminal.png?raw=true "Terminal, CMus and i3")

### Resources 

- [Managing dotfiles](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)