all: link configuring

link:
	ln -s $(PWD)/autotest $(HOME)/.autotest
	ln -s $(PWD)/gitignore $(HOME)/.gitignore
	ln -s $(PWD)/gitconfig $(HOME)/.gitconfig
	ln -s $(PWD)/gemrc $(HOME)/.gemrc
	ln -s $(PWD)/ackrc $(HOME)/.ackrc

unlink:
	unlink $(HOME)/.autotest
	unlink $(HOME)/.gemrc
	unlink $(HOME)/.ackrc
	unlink $(HOME)/.gitignore
	unlink $(HOME)/.gitconfig

configuring:
	git config --global core.excludesfile $(HOME)/.gitignore
