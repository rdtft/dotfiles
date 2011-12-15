all: link configuring

link:
	ln -s $(PWD)/autotest $(HOME)/.autotest
	ln -s $(PWD)/gitignore $(HOME)/.gitignore
	ln -s $(PWD)/gitconfig $(HOME)/.gitconfig
	ln -s $(PWD)/gemrc $(HOME)/.gemrc
	ln -s $(PWD)/ackrc $(HOME)/.ackrc
	ln -s $(PWD)/zshrc $(HOME)/.zshrc

unlink:
	unlink $(HOME)/.autotest
	unlink $(HOME)/.gemrc
	unlink $(HOME)/.ackrc
	unlink $(HOME)/.gitignore
	unlink $(HOME)/.gitconfig
	unlink $(HOME)/.zshrc

configuring:
	git config --global core.excludesfile $(HOME)/.gitignore
