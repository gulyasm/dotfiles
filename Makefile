default: install

install:
	cp .bashrc ~/
	cp .vimrc ~/
	cp .tmux.conf ~/
	cp .gitconfig ~/
	cp .profile ~/
	cp .NERDTreeBookmarks ~/

get:
	cp ~/.bashrc .
	cp ~/.vimrc .
	cp ~/.tmux.conf .
	cp ~/.gitconfig .
	cp ~/.profile .
	cp ~/.NERDTreeBookmarks .
