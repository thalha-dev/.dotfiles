# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/thalha/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH


export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
export ALTERNATE_EDITOR="vim"
export EDITOR="lvim"



# ALIASES
#
# current temp working dir to clipboard 
alias cll="pwd | xclip -i -sel primary"



# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# vim 
alias vim='/usr/bin/vim'
alias vi='/usr/local/bin/nvim'
alias v="$HOME/.local/bin/lvim"


alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Changing "ls" to "exa"
alias ls='ls --color=auto'
#alias la='ls -ah --color=auto'
#alias l='ls -lash --color=auto'
alias ll='ls -las --color=auto'
alias ld='ls -lhd .[^.]* --color=auto'
# exa - ls alternative
alias l='exa -almi --icons --group'
alias la='exa --icons -a'



# utils and binaries

alias cat="batcat"
alias c="clear"
alias k="keynav daemonize"

##alias livee="live-server --no-browser --quiet &"
#alias klivee="ps aux | grep live-server | grep -v grep | awk '{print $2}' | xargs kill"



# applications

alias fdm="fdm &"
alias eclipse="eclipse &"
alias f="vifm"
alias goo="google-chrome"

# update and upgrade

alias update="sudo apt update"
alias upgrade="sudo apt upgrade"

# system control

#alias brightness="xrandr --output eDP --brightness"
alias bri="sudo brightnessctl set" 
#alias keys="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"


alias bluecon="bluetoothctl connect 41:42:59:C9:5E:12"
alias bluediscon="bluetoothctl disconnect 41:42:59:C9:5E:12"


# switch between shells
# I do not recommend switching default SHELL from bash.
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"




#JAVA & GO
#
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

export PATH=$PATH:$JAVA_HOME/bin:/usr/local/go/bin



# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nvim'
# else
#   export EDITOR='vim'
# fi

# load Xmodmap
# xmodmap ~/.Xmodmap



eval "$(starship init zsh)"

if [ -e /home/thalha/.nix-profile/etc/profile.d/nix.sh ]; then . /home/thalha/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
