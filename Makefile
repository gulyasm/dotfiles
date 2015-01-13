default: install

install:
	cp .bashrc ~/
	cp .vimrc ~/
	cp .tmux.conf ~/
	cp .gitconfig ~/
	cp .profile ~/

get:
	cp ~/.bashrc .
	cp ~/.vimrc .
	cp ~/.tmux.conf .
	cp ~/.gitconfig .
	cp ~/.profile .
