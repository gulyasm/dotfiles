eval `dircolors /home/gulyasm/.dir_colors`
VIM=/usr/local/bin/vim
VIMRUNTIME=/usr/local/bin/vim
EDITOR=$VIM/vim

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
export GOROOT=/usr/local/go
export PATH=$PATH:/opt/apache-maven-3.2.3/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:/home/gulyasm/.local/bin
export GOPATH=/home/gulyasm/gocode
export MYSQL_ROOT_PASSWORD='root'
export WWW_HOME=/usr/share/nginx/html
export PATH=$PATH:/opt/terraform
