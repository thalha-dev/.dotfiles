
### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/applications $HOME/.local/bin $fish_user_paths

# Export #
set TERM "xterm-256color"                         # Sets the terminal type

#remove greeting
set -U fish_greeting

### SET MANPAGER
### "bat" as manpager
set -x MANPAGER "sh -c 'col -bx | batcat -l man -p'"


### SET EITHER DEFAULT EMACS MODE OR VI MODE ###
function fish_user_key_bindings
  # fish_default_key_bindings
  fish_vi_key_bindings
  bind -M insert -m default jk backward-char force-repaint
end
### END OF VI MODE ###


### ALIASES ###

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
alias vi='/usr/local/bin/nvim'

# ls 
alias ls='ls --color=auto'
#alias la='ls -ah --color=auto'
#alias l='ls -lash --color=auto'
alias ll='ls -lash --color=auto'
alias ld='ls -hd .* --color=auto'
alias lld='ls -lhd .* --color=auto'
# exa - ls alternative
alias l='exa -alhhumi --icons --group'
alias la='exa --icons -a'



alias dir='dir --color=auto'
alias vdir='vdir --color=auto'


# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

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


# switch between shells
# I do not recommend switching default SHELL from bash.
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"


# utils and binaries

alias cat="batcat"
alias c="clear"
alias k="keynav daemonize"


# applications

alias fdm="fdm &"
alias eclipse="eclipse &"
alias f="vifm"

# update and upgrade

alias update="sudo apt update"
alias upgrade="sudo apt upgrade"

# system control

alias brightness="xrandr --output eDP --brightness"

#Export Path

#JAVA

set -gx JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
set -gx PATH $PATH $JAVA_HOME/bin

#Go
set -gx PATH $PATH /usr/local/go/bin

#prompt
#
starship init fish | source 

