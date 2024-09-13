# dotfiles

My public dotfiles.


## VIM

### Install plugins via vim-plug

```shell
curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```shell
vim +'PlugInstall --sync' +qa
```

## tmux

```shell
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

`Ctrl` + `a` `I` to install plugins.


## Misc

### Fonts

* Monaco Nerd Fonts

```shell
git clone https://github.com/Karmenzind/monaco-nerd-fonts
cp -r monaco-nerd-fonts/fonts/ /usr/share/fonts/monaco-nerd-fonts
```
