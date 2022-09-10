# Mode

set -o vi


# Set MANPAGER

export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

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
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Aliaser


# current temp working dir to primary clipboard 

alias cll="pwd | xclip -i -sel primary"

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'


# vim 
alias vim='/usr/bin/vim'
alias v='/usr/bin/nvim'


# ls 
alias ls='exa --icons --color=auto'
alias la='exa --icons -a'
alias l='exa -al --icons --group'
alias ld='exa -ad .[^.]* --icons --color=auto'
alias e='exa -al --icons --group'
alias lt='exa -al --icons --group --tree'
alias lt2='exa -al --icons --group --tree --level=2'
alias lt3='exa -al --icons --group --tree --level=3'
alias lt4='exa -al --icons --group --tree --level=4'
alias lj='exa -a --icons --group *.java'

# utils and binaries

alias p="batcat"
alias c="clear"
alias k="keynav daemonize"

# tmux
alias t='tmux a 2>/dev/null || tmux'
alias td='tmux detach'
alias tk='tmux kill-server'
alias tn='tmux new -d -s '

#alias livee="live-server --no-browser --quiet &"
#alias klivee="ps aux | grep live-server | grep -v grep | awk '{print $2}' | xargs kill"


# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

# ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'


# applications

alias fdm="fdm &"
alias eclipse="eclipse &"
alias f="lf"
alias tmux="tmux -u"
alias mad="go-mtpfs /home/thalha/Downloads/android-mp"
alias kmad="fusermount -u /home/thalha/Downloads/android-mp"
alias ja="java -cp ./target/classes/ "
alias mcc="mavenCoreJava.sh"
alias I="macchina"
#alias robot="/home/thalha/other-applications/robo3t-1.4.4-linux-x86_64-e6ac9ec/bin/robo3t"
#alias pman="/home/thalha/other-applications/Postman/Postman"
#alias tor="./start-tor-browser.desktop"
#alias tord="echo '/home/thalha/other-applications/tor-browser_en-US/'"
#alias ctord="cd (tord)"

#alias lser="live-server --no-browser --quiet &"

# update and upgrade

alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias nirm="nix-env -e "
alias nils="nix-env -q"
alias up="sudo nala update"
alias upp="sudo nala upgrade"
alias ins="sudo nala install"
alias rem="sudo nala remove"
alias hist="sudo nala history"
alias histun="sudo nala history undo"
alias histre="sudo nala history redo"

# system control

#alias brightness="xrandr --output eDP --brightness"
alias bri="sudo brightnessctl set"

#alias keys="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"

alias bcon="bluetoothctl connect C6:36:B2:7C:A7:A6"
alias bdiscon="bluetoothctl disconnect C6:36:B2:7C:A7:A6"

# YOUTUBE-DL
alias yb="yt-dlp"
alias ybs="yt-dlp  --sub-lang en --sub-format srt/best --write-sub --write-auto-sub"
#
alias y2='yt-dlp -f "best[height<=240]"'
alias y2s='yt-dlp -f "best[height<=240]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub'
#
alias y3='yt-dlp -f "best[height<=360]"'
alias y3s='yt-dlp -f "best[height<=360]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub'
#
alias y4='yt-dlp -f "best[height<=480]"'
alias y4s='yt-dlp -f "best[height<=480]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub'
#
alias y7='yt-dlp -f "best[height<=720]"'
alias y7s='yt-dlp -f "best[height<=720]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub'
#
alias yc="yt-dlp -f"
alias ycs="yt-dlp --sub-lang en --sub-format srt/best --write-sub --write-auto-sub -f"
#
alias yf="yt-dlp -F"
#
alias ya="yt-dlp -x"
alias yam="yt-dlp -x --audio-format mp3"
alias y7p='yt-dlp -f "best[height<=720]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub "https://youtube.com/playlist?list=PLJO6LXdW1rbjaDom_ozO-TFL3DJtJzL5x"'
alias y4p='yt-dlp -f "best[height<=480]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub "https://youtube.com/playlist?list=PLJO6LXdW1rbjaDom_ozO-TFL3DJtJzL5x"'
#
# -o - custom name or/and location
#
#yt-dlp -o '%(title)s by %(uploader)s on %(upload_date)s in %(playlist)s.%(ext)s' https://www.yt.com/watch?v=7E-cwdnsiow
#
# -a - url in text file

# MPV
alias mm3="mpv --profile=360p "
alias mm4="mpv --profile=480p "
alias mm7="mpv --profile=720p "
alias mm8="mpv --profile=1080p "

# YTFZF
if [[ ${TERM} == "xterm-kitty" ]]; then

    # VIDEO
    # ------ play video
    alias ff="ytfzf --thumb-viewer=kitty --pages=2 -t -f -l --detach --pages-start="
    # ------ sort by time
    alias ffsy="ytfzf --thumb-viewer=kitty --pages=2 -t -f -l --detach --upload-date=year --pages-start="
    alias ffsm="ytfzf --thumb-viewer=kitty --pages=2 -t -f -l --detach --upload-date=month --pages-start="
    alias ffsw="ytfzf --thumb-viewer=kitty --pages=2 -t -f -l --detach --upload-date=week --pages-start="
    
    # ------ download video
    alias ffd="ytfzf -t --thumb-viewer=kitty --pages=2 -f -d --pages-start="
    alias ffds="ytfzf -t --thumb-viewer=kitty --pages=2 -f --ytdl-opts='--write-auto-subs' -d --pages-start="

    # AUDIO
    # ------ play audio
    alias ffa="ytfzf --thumb-viewer=kitty --pages=2 -t -l -m --pages-start="
    # ------- download audio
    alias ffad="ytfzf --thumb-viewer=kitty --pages=2 -t -l -m --ytdl-opts='-x --audio-format mp3' -d --pages-start="
else
    # VIDEO
    # ------ play video
    alias ff="ytfzf --thumb-viewer=chafa --pages=2 -t -f -l --detach --pages-start="
    # ------ sort by time
    alias ffsy="ytfzf --thumb-viewer=chafa --pages=2 -t -f -l --detach --upload-date=year --pages-start="
    alias ffsm="ytfzf --thumb-viewer=chafa --pages=2 -t -f -l --detach --upload-date=month --pages-start="
    alias ffsw="ytfzf --thumb-viewer=chafa --pages=2 -t -f -l --detach --upload-date=week --pages-start="
    
    # ------ download video
    alias ffd="ytfzf -t --thumb-viewer=chafa --pages=2 -f -d --pages-start="
    alias ffds="ytfzf -t --thumb-viewer=chafa --pages=2 -f --ytdl-opts='--write-auto-subs' -d --pages-start="

    # AUDIO
    # ------ play audio
    alias ffa="ytfzf --thumb-viewer=chafa --pages=2 -t -l -m --pages-start="
    # ------- download audio
    alias ffad="ytfzf --thumb-viewer=chafa --pages=2 -t -l -m --ytdl-opts='-x --audio-format mp3' -d --pages-start="
fi



# switch between shells
# I do not recommend switching default SHELL from bash.
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"



# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
. "$HOME/.cargo/env"



# load Xmodmap
# xmodmap ~/.Xmodmap


eval "$(starship init bash)"

# eval "$(zoxide init bash)"

# BEGIN_KITTY_SHELL_INTEGRATION
#if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
