# Mode

set -o vi

# EXPORTS

# -----Editor
export ALTERNATE_EDITOR="vim"
export EDITOR="nvim"


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
#alias v='/usr/local/bin/nvim'


# ls 
# alias ls='ls --color=auto'
alias ls='exa --icons --color=auto'
#alias la='ls -ah --color=auto'
#alias l='ls -lash --color=auto'
alias ll='ls -la --color=auto'
alias ld='exa -ad .[^.]* --icons --color=auto'
# exa - ls alternative
alias l='exa -almi --icons --group'
alias la='exa --icons -a'


# utils and binaries

alias p="batcat"
alias c="clear"
alias k="keynav daemonize"

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
alias f="vifm"
alias goo="google-chrome"
alias tmux="tmux -u"
#alias robot="/home/thalha/other-applications/robo3t-1.4.4-linux-x86_64-e6ac9ec/bin/robo3t"
#alias pman="/home/thalha/other-applications/Postman/Postman"
#alias tor="./start-tor-browser.desktop"
#alias tord="echo '/home/thalha/other-applications/tor-browser_en-US/'"
#alias ctord="cd (tord)"

#alias lser="live-server --no-browser --quiet &"

# update and upgrade

alias update="sudo apt update"
alias upgrade="sudo apt upgrade"

# system control

#alias brightness="xrandr --output eDP --brightness"
alias bri="sudo brightnessctl set"

#alias keys="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"

alias bcon="bluetoothctl connect C6:36:B2:7C:A7:A6"
alias bdiscon="bluetoothctl disconnect C6:36:B2:7C:A7:A6"



# switch between shells
# I do not recommend switching default SHELL from bash.
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"


# variables

export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8


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



#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
#export PATH=$PATH:$JAVA_HOME/bin

# load Xmodmap
xmodmap ~/.Xmodmap


eval "$(starship init bash)"


# BEGIN_KITTY_SHELL_INTEGRATION
#if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
