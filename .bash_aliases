# custom aliasis
alias .='cd .'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias mkdir='mkdir -pv'
alias h='history'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T'
alias mlwebs='ssh mlweb'
alias mldms='ssh mldm'
alias fsize='du -hd1 | sort -hr'
alias sf='subl -f .'
alias j='jump'
alias mkae='make'
alias mkea='make'
alias tn='tmux new bash'
alias serve='python -m SimpleHTTPServer'
alias sum_hdfs="cut -d ' ' -f 8 | awk '{s+=$1} END {print s}'"
alias gitall='find  . -maxdepth 2 -type d -name .git -execdir git st \;'
alias gb='go build'
alias myl='mysql -uroot -proot'
alias gtr='git tr'
alias hg='history | grep'
alias gs='git st'
alias gp='git pull'
alias gt='git tr'
alias gl='git lg -20'
alias ga='git add .'
alias gcm='git commit'
alias gdf='git diff'
alias gic='git commit'

alias v='vagrant'
alias t='terraform'

alias jwa='jira worklogadd'
alias jstart='jira start'
alias jstop='jira start'

alias cdtemp='cd `mktemp -d`'

alias gno='gnome-open'

function saveit {
    mkdir -p ~/archive
    tar -cavf ~/archive/$(basename $1)_$(date +"%Y%m%d_%H%M").tar.gz $1
}

function scratch {
    vim ~/Dropbox/insightful/$1
}

function topen {
    vim ~/Dropbox/insightful/${1}
}

_completetopen() {
    local curw=${COMP_WORDS[COMP_CWORD]}
    local wordlist=$(find ~/Dropbox/insightful -type f -printf "%f\n")
    COMPREPLY=($(compgen -W '${wordlist[@]}' -- "$curw"))
    return 0
}

function stags {
    grep -l "^tags: .*${1}*" ~/Dropbox/insightful/*
}

function gd() {
    go doc $@ | less
}

function shortdate() {
    date -d $1 +%Y-%m-%d
}

gocd () { cd $(go list -f '{{.Dir}}' .../$1 |head -1); }

cdp () {
      TEMP_PWD=`pwd`
      while ! [ -d .git ]; do
      cd ..
      done
      OLDPWD=$TEMP_PWD
}

pcp () {
    python -c "print $@"
}

github() {
    repo=${1}
    if [[ -z "${repo}" ]];
    then
        repo=$(basename `pwd`);
    fi
    google-chrome "https://github.com/enbritely/${repo}"
}

f() {
    find . -type f -iname "${@}" -not -iname *.pyc
}

fa() {
    find . -type f -iname "*${@}*" -not -iname *.pyc
}
