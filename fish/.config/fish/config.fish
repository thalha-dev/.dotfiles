
### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/applications $HOME/.local/bin $fish_user_paths

# Export #
set TERM "xterm-256color"                         # Sets the terminal type
set SHELL "/usr/bin/fish"                  # Sets the shell

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
alias v='/usr/bin/nvim'

# ls 
#alias ls='ls --color=auto'
alias ls='exa --icons --color=auto'
#alias la='ls -ah --color=auto'
#alias l='ls -lash --color=auto'
alias ld='exa -ad .* --icons --color=auto'
# exa - ls alternative
alias l='exa -almi --icons --group'
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

alias p="batcat"
alias c="clear"
alias k="keynav daemonize"

#alias lser="live-server --no-browser --quiet &"

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

# update and upgrade

alias update="sudo apt update"
alias upgrade="sudo apt upgrade"

# system control

#alias brightness="xrandr --output eDP --brightness"

alias bri="sudo brightnessctl set" 

#alias keys="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"


alias bcon="bluetoothctl connect C6:36:B2:7C:A7:A6"
alias bdiscon="bluetoothctl disconnect C6:36:B2:7C:A7:A6"


#Variables


set -gx LC_ALL 'en_IN.UTF-8'
set -gx LANG 'en_IN.UTF-8'


#Export Path

#JAVA

#set -gx JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
#set -gx PATH $PATH $JAVA_HOME/bin

#Go
set -gx PATH $PATH /usr/local/go/bin

#Rust
set -gx PATH $PATH ~/.cargo/bin

# load Xmodmap
xmodmap ~/.Xmodmap

xset r rate 240 20
#cat ~/.config/asciiarts/bismillah.txt | lolcat -F 0.021


#prompt
#
#starship init fish | source 

