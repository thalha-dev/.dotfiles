
### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
# set -U fish_user_paths $HOME/applications $HOME/.local/bin $fish_user_paths

# Export #
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
  bind yy fish_clipboard_copy
end
### END OF VI MODE ###


### ALIASES ###

# current temp working dir to primary clipboard
alias cll="pwd | xclip -i -sel primary"


# tmux
alias t='tmux a 2>/dev/null || tmux'
alias td='tmux detach'
alias tk='tmux kill-server'
alias tn='tmux new -d -s '

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
alias ld='exa -ad .* --icons --color=auto'
alias l='exa -al --icons --group'
alias lt='exa -alm --icons --group --tree'
alias lt2='exa -alm --icons --group --tree --level=2'
alias lt3='exa -alm --icons --group --tree --level=3'
alias lt4='exa -alm --icons --group --tree --level=4'
alias lj='exa -am --icons --group *.java'
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


# MPV
alias mm3="mpv --profile=360p "
alias mm4="mpv --profile=480p "
alias mm7="mpv --profile=720p "
alias mm8="mpv --profile=1080p "


if test "$TERM" = "xterm-kitty" 
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
end


# YTFZF





# switch between shells
# I do not recommend switching default SHELL from bash.
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"
alias tofish="sudo chsh $USER -s /bin/fish && echo 'Now log out.'"


# utils and binaries

alias p="batcat"
alias c="clear"
alias k="keynav daemonize"
alias ja="java -cp ./target/classes/ "
alias mcc="mavenCoreJava.sh"
alias I="macchina"
alias s="fuzzyScript.sh" 
alias W="fuzzyWiki.sh " 
alias V="fuzzyVideos.sh " 
#alias lser="live-server --no-browser --quiet &"

# applications

alias fdm="fdm &"
alias eclipse="eclipse &"
alias f="lf"
alias tmux="tmux -u"
alias mad="go-mtpfs /home/thalha/Downloads/android-mp"
alias kmad="fusermount -u /home/thalha/Downloads/android-mp"
alias ormoluGit="ormolu --mode inplace (git ls-files '*.hs')"
alias ormoluTree="ormolu --mode inplace (find . -name '*.hs')"

#alias robot="/home/thalha/other-applications/robo3t-1.4.4-linux-x86_64-e6ac9ec/bin/robo3t"
#alias pman="/home/thalha/other-applications/Postman/Postman"
#alias tor="./start-tor-browser.desktop"
#alias tord="echo '/home/thalha/other-applications/tor-browser_en-US/'"
#alias ctord="cd (tord)"

# update and upgrade

alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias nirm="nix-env -e "
alias nils="nix-env -q"
alias up="sudo nala update"
alias upp="sudo nala upgrade"
alias kittyUpdate="curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin"
alias ins="sudo nala install"
alias rem="sudo nala remove"
alias hist="sudo nala history"
alias histun="sudo nala history undo"
alias histre="sudo nala history redo"

# system control

#alias brightness="xrandr --output eDP --brightness"

alias bri="brightnessctl set" 
alias bri50="brightnessctl set 50%" 

#alias keys="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"

# Bluetooth

alias bcon="bluetoothctl connect C6:36:B2:7C:A7:A6"
alias bdiscon="bluetoothctl disconnect C6:36:B2:7C:A7:A6"

#dbus-send --system --print-reply --dest=org.bluez / org.freedesktop.DBus.ObjectManager.GetManagedObjects | less
#dbus-send --system --print-reply --dest=org.bluez /org/bluez/hci0/dev_C6_36_B2_7C_A7_A6/sep1/fd4 org.freedesktop.DBus.Properties.Get string:"org.bluez.MediaTransport1" string:"Volume" | grep uint16"
#dbus-send --system --print-reply --dest=org.bluez /org/bluez/hci0/dev_C6_36_B2_7C_A7_A6/sep1/fd4 org.freedesktop.DBus.Properties.Set string:"org.bluez.MediaTransport1" string:"Volume" variant:uint16:70"


alias sleepoff="sudo systemctl mask sleep.target"
alias sleepon="sudo systemctl unmask sleep.target"
alias suspendoff="sudo systemctl mask suspend.target"
alias suspendon="sudo systemctl unmask suspend.target"
alias hibernateoff="sudo systemctl mask hibernate.target"
alias hibernateon="sudo systemctl unmask hibernate.target"
# sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

# load Xmodmap
# xmodmap ~/.Xmodmap

#prompt
#starship init fish | source 

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/thalha/.ghcup/bin # ghcup-env
