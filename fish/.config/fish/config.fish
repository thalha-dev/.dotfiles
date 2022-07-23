
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
alias lt='exa -almi --icons --group --tree'
alias lt2='exa -almi --icons --group --tree --level=2'
alias lt3='exa -almi --icons --group --tree --level=3'
alias lt4='exa -almi --icons --group --tree --level=4'
alias lj='exa -ami --icons --group *.java'
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


# YOUTUBE-DL
alias yb="yt-dlp"
alias ybs="yt-dlp  --sub-lang en --sub-format srt/best --write-sub --write-auto-sub"
#
alias y2="yt-dlp -f "best[height<=240]""
alias y2s="yt-dlp -f "best[height<=240]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub"
#
alias y3="yt-dlp -f "best[height<=360]""
alias y3s="yt-dlp -f "best[height<=360]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub"
#
alias y4="yt-dlp -f "best[height<=480]""
alias y4s="yt-dlp -f "best[height<=480]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub"
#
alias y7="yt-dlp -f "best[height<=720]""
alias y7s="yt-dlp -f "best[height<=720]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub"
#
alias yc="yt-dlp -f"
alias ycs="yt-dlp --sub-lang en --sub-format srt/best --write-sub --write-auto-sub -f"
#
alias yf="yt-dlp -F"
#
alias ya="yt-dlp -x"
alias yam="yt-dlp -x --audio-format mp3"
#
# -o - custom name or/and location
#
#yt-dlp -o '%(title)s by %(uploader)s on %(upload_date)s in %(playlist)s.%(ext)s' https://www.yt.com/watch?v=7E-cwdnsiow
#
# -a - url in text file
#

alias y7p="yt-dlp -f "best[height<=720]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub \"https://youtube.com/playlist?list=PLJO6LXdW1rbjaDom_ozO-TFL3DJtJzL5x\""
alias y4p="yt-dlp -f "best[height<=480]" --sub-lang en --sub-format srt/best --write-sub --write-auto-sub \"https://youtube.com/playlist?list=PLJO6LXdW1rbjaDom_ozO-TFL3DJtJzL5x\""



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

# Bluetooth

alias bcon="bluetoothctl connect C6:36:B2:7C:A7:A6"
alias bdiscon="bluetoothctl disconnect C6:36:B2:7C:A7:A6"

#dbus-send --system --print-reply --dest=org.bluez / org.freedesktop.DBus.ObjectManager.GetManagedObjects | less
#dbus-send --system --print-reply --dest=org.bluez /org/bluez/hci0/dev_C6_36_B2_7C_A7_A6/sep1/fd4 org.freedesktop.DBus.Properties.Get string:"org.bluez.MediaTransport1" string:"Volume" | grep uint16"
#dbus-send --system --print-reply --dest=org.bluez /org/bluez/hci0/dev_C6_36_B2_7C_A7_A6/sep1/fd4 org.freedesktop.DBus.Properties.Set string:"org.bluez.MediaTransport1" string:"Volume" variant:uint16:70"


#Variables


set -gx LC_ALL 'en_IN.UTF-8'
set -gx LANG 'en_IN.UTF-8'



#Export Path

#JAVA

set -gx JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64
set -gx PATH $PATH $JAVA_HOME/bin

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
zoxide init fish | source
