# Editor
EDITOR=nano

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# history size 100K
export HISTFILESIZE=100000

# Using **
shopt -s globstar

# bash completion after sudo
complete -cf sudo

# shorter PS1
PS1='\[\e[01;32m\]\\\[\e[00;37m\]\W\[\e[01;32m\]\$\[\e[00m\] '

# enable color support
if [ -x /bin/dircolors -o -x /usr/bin/dircolors ]; then
    alias diff='colordiff'
fi

# ls aliases
alias ls='ls -hF'                   # Humanable
alias ll='ls -l'                    # With info
alias la='ls -Al'                   # All except . and ..
alias l1='ls -1'                    # In one coloumn
alias lr='ls -R'                    # Recursive
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date

# system aliases
alias more='less'
alias less='less -R'
alias mkdir='mkdir -p -v'
alias man='LANG=en_US man'
alias su='su -'
alias du='du -h -s'
alias psg='ps -ef | grep $1'

# Packet Managers
alias sa='sudo apt'
alias sai='sudo apt install'
alias sar='sudo apt remove'
alias saa='sudo apt autoremove'
alias sau='sudo apt update'
alias sag='sudo apt upgrade'
alias alg='apt list 2>/dev/null | grep'
alias alga='apt list --all-versions 2>/dev/null | grep'
alias ats='aptitude search -F "%c %p %v %V %d"'
alias se='sudo emerge -av'
alias sp='sudo pacman'
alias packer='packer --skipinteg --noconfirm'

# wine
alias winej='LANG=ja_JP.utf8 wine'
alias winejs='LANG=ja_JP.ujis wine'
alias winer='LANG=ru_RU.cp1251 wine'
alias wineru='LANG=ru_RU.utf8 wine'

# unzip with locale
alias unzipr='LANG=ru_RU.cp1251 unzip'
alias unzipru='LANG=ru_RU.utf8 unzip'
alias unzipj='UNZIP="-O cp932" unzip'

# extract any archive
extract ()
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)     tar xvjf $1    ;;
			*.tar.gz)      tar xvzf $1    ;;
			*.bz2)         bunzip2 $1     ;;
			*.rar)         unrar x $1     ;;
			*.gz)          gunzip $1      ;;
			*.tar)         tar xvf $1     ;;
			*.tbz2)        tar xvjf $1    ;;
			*.zip)         unzip $1       ;;
			*.7z)          7z x $1        ;;
			*)             echo "don't know how to extract '%1'…"
		esac
	else
		echo "'$1' is not a valid file!"
	fi
}
