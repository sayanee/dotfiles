CURDIR = $(shell pwd)

install:
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

	# editor config
	touch ~/.atom/config.cson
	mv ~/.atom/config.cson ~/.atom/config.cson.original
	ln -s $(CURDIR)/config.cson ~/.atom/config.cson

	# hosts
	sudo mv /etc/hosts /etc/hosts.original
	sudo cp hosts /etc/hosts
