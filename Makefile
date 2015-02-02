default: install

install:
	cp .bashrc ~/
	cp .bash_profile ~/
	cp .vimrc ~/
	cp .tmux.conf ~/
	cp .gitconfig ~/
	cp .profile ~/
	cp .NERDTreeBookmarks ~/

get:
	cp ~/.bashrc .
	cp ~/.bash_profile .
	cp ~/.vimrc .
	cp ~/.tmux.conf .
	cp ~/.gitconfig .
	cp ~/.profile .
	cp ~/.NERDTreeBookmarks .
