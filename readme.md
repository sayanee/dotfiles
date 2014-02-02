#dotfiles

1. `.bowerrc`: [bower config](https://github.com/bower/bower#custom-install-directory)
1. `.csslintrc`: [css lint](https://github.com/stubbornella/csslint/wiki/Rules)
1. `.gitconfig`: [git config](http://git-scm.com/docs/git-config)
1. `.gitignore`: global [git ignore](https://help.github.com/articles/ignoring-files)
1. `.jscs.json`: javascript [style checker](https://npmjs.org/package/jscs)
1. `.tmux.conf`: tmux configuration file
1. `.zshrc`: on my zsh profile, theme and prompt
1. `bira.zsh-theme`: oh-my-zsh prompt
1. `LICENSE`: MIT License

Create symlinks from this repository to each of the locations:

```
ln -s ~/Workspace/dotfiles/.gitignore ~/.gitignore
ln -s ~/Workspace/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Workspace/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/Workspace/dotfiles/.zshrc ~/.zshrc
```
