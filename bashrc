force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Aliases:
alias c='clear'
alias chrome='google-chrome'
alias commands='cat ~/Scripts/commands.txt'
alias copy='xclip -selection clipboard <'
alias doc='cd ~/Documents; clear'
alias e='exit'
alias fox='python3 ~/Github/linux-swashbuckling/fox.py'
alias gh='cd ~/Github'
alias gitpull='/home/jpell/Scripts/gitpull.sh'
alias ip='ifconfig'
alias linux='cd ~/Github/linux-swashbuckling'
alias l='ls'
alias lsl='ls -lhS' #l = long list, h = file size, S = sort by size
alias mejor='cd ~/Scripts/MejorCopy'
alias music='cd ~/Music; clear'
alias publicip='curl ifconfig.me'
alias rune='java -jar ~/Desktop/RuneLite.jar'
alias samba_status='sudo systemctl status smbd'
alias screenshots='sudo rm -r ~/Pictures/Screenshots/*'
alias shred='shred -zvu -n 1'
alias size='du -sh'
alias sort='~/Scripts/sort.sh'
alias token='xclip -sel clip < ~/Github/token.txt'
alias tr='trans -b'
alias trash='trash'
alias vget='yt-dlp'
alias vd='mv ~/Downloads/VideoDownloader/* ~/Videos/'
alias whit='cd whitakers-words; bin/words'

