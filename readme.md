#dotfiles

- `.gitconfig`: git config
- `.gitignore`: git files to ignore generally
- `.tmux.conf`: Tmux configuration file
- `.zshrc`: on my zsh profile, theme and prompt

Create symlinks from this repository to each of the locations:

```
ln -s ~/Workspace/dotfiles/.gitignore ~/.gitignore
ln -s ~/Workspace/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/Workspace/dotfiles/.tmux.conf ~/.tmux.conf
```