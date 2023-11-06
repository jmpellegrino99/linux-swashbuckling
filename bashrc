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
alias l='ls'
alias c='clear'
alias e='exit'
alias tr='trans -b'
alias fox='python3 ~/Github/linux-swashbuckling/fox.py'
alias token='xclip -sel clip < ~/Github/token.txt'
alias vd='mv ~/Downloads/VideoDownloader/* ~/Videos/'
alias gh='cd ~/Github'
#alias ffmpeg='ffmpeg -i' #Converts [FILENAME.mp4] [NEWFILENAME.mp3]
alias ip='ifconfig'
alias vget='yt-dlp'
alias size='du -sh'
alias samba_status='sudo systemctl status smbd'
alias la='source /home/jpell/Scripts/la.sh'
alias gitpull='/home/jpell/Scripts/gitpull.sh'
alias copy='xclip -selection clipboard <'
alias sort='~/Scripts/sort.sh'
alias shred='shred -zvu -n 1'
alias trash='trash'
alias publicip='curl ifconfig.me'

