# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8
# TERM
export TERM=xterm-256color
# EDITOR
export ALTERNATE_EDITOR="vim"
export EDITOR="nvim"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
. "$HOME/.cargo/env"

# GOLANG
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin
# JAVA 
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin
# IDEA
export PATH=$PATH:$HOME/source-installed/idea/idea-IC-222.3345.118/bin
# RUST
export PATH=$PATH:$HOME/.cargo/bin
# mason
export PATH=$PATH:$HOME/.local/share/nvim/mason/bin 
# application
export PATH=$PATH:$HOME/applications


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
