install:
	# .gitconfig
	touch ~/.gitconfig
	mv ~/.gitconfig ~/.gitconfig.original
	cp .gitconfig ~/.gitconfig

	# .gitignore
	touch ~/.gitignore
	mv ~/.gitignore ~/.gitignore.original
	cp .gitignore ~/.gitignore

	# .zshrc
	touch ~/.zshrc
	mv ~/.zshrc ~/.zshrc.original
	cp .zshrc ~/.zshrc

	# .zshenv
	touch ~/.zshenv
	mv ~/.zshenv ~/.zshenv.original
	cp .zshenv ~/.zshenv

	# ohmyzsh theme
	touch ~/.oh-my-zsh/themes/sayanee.zsh-theme
	mv ~/.oh-my-zsh/themes/sayanee.zsh-theme ~/.oh-my-zsh/themes/sayanee.zsh-theme.original
	cp sayanee.zsh-theme ~/.oh-my-zsh/themes/sayanee.zsh-theme

	# editor config
	touch ~/.atom/config.cson
	mv ~/.atom/config.cson ~/.atom/config.cson.original
	cp config.cson ~/.atom/config.cson

	# hosts
	sudo mv /etc/hosts /etc/hosts.original
	sudo cp hosts /etc/hosts
