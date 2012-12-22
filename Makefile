all: link configuring

link:
	ln -s $(PWD)/gitignore $(HOME)/.gitignore
	ln -s $(PWD)/gitconfig $(HOME)/.gitconfig
	ln -s $(PWD)/zshrc $(HOME)/.zshrc

unlink:
	unlink $(HOME)/.gitignore
	unlink $(HOME)/.gitconfig
	unlink $(HOME)/.zshrc

configuring:
	git config --global core.excludesfile $(HOME)/.gitignore
