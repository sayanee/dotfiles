CURDIR = $(shell pwd)

install:
	# SSH config
	rm -f ~/.ssh/config
	ln -s $(CURDIR)/ssh/config ~/.ssh/config

	# .gitconfig
	touch ~/.gitconfig
	mv ~/.gitconfig ~/.gitconfig.original
	ln -s $(CURDIR)/gitconfig ~/.gitconfig

	# .gitignore
	touch ~/.gitignore
	mv ~/.gitignore ~/.gitignore.original
	ln -s $(CURDIR)/gitignore ~/.gitignore

	# .zshrc
	touch ~/.zshrc
	mv ~/.zshrc ~/.zshrc.original
	ln -s $(CURDIR)/zshrc ~/.zshrc

	# .zshenv
	touch ~/.zshenv
	mv ~/.zshenv ~/.zshenv.original
	ln -s $(CURDIR)/zshenv ~/.zshenv

	# oh-my-zsh theme
	rm -f ~/.oh-my-zsh/themes/sayanee.zsh-theme
	ln -s $(CURDIR)/sayanee.zsh-theme ~/.oh-my-zsh/themes/sayanee.zsh-theme

	# hosts
	sudo mv /etc/hosts /etc/hosts.original
	sudo cp hosts /etc/hosts

	# .gemrc
	touch ~/.gemrc
	mv ~/.gemrc ~/.gemrc.original
	ln -s $(CURDIR)/gemrc ~/.gemrc

		# VS Code settings
	mv ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings.json.original
	ln -s .vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
