all: link

link:
	ln -s $(PWD)/autotest $(HOME)/.autotest
	ln -s $(PWD)/gemrc $(HOME)/.gemrc
	ln -s $(PWD)/ackrc $(HOME)/.ackrc

unlink:
	unlink $(HOME)/.autotest
	unlink $(HOME)/.gemrc
	unlink $(HOME)/.ackrc
