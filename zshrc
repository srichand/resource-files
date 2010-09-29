#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

# ssh-agent stuff
ssh-add ~/.ssh/priv/* 2> /dev/null

## history
setopt APPEND_HISTORY
## for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
# Alias for vi mode
bindkey '^R' history-incremental-search-backward
bindkey -v  # vi mode

# Show current command mode
function zle-line-init zle-keymap-select {
    #PS1="%{\033[31m%}%m%{\033[0m%}"
    RPS1="${${KEYMAP/vicmd/-${fgred} N -}/(main|viins)/- I -}"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# CUSTOM colors
source ~/.custom-colors

## never ever beep ever
setopt NO_BEEP

## automatically decide when to page a list of completions
LISTMAX=0

## disable mail checking
MAILCHECK=0

# Useful aliases
# Grep alias
alias e='egrep -Rni --exclude=\*.svn\* --color'
alias g=git
alias lsd='echo "Yeah right!"'
alias bjam="bjam --v2 --toolset=darwin build_environment=darwin"
alias ld="ld64"
alias py=python

# For Google perf tools.
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/sandbox/vendor/google/perftools/lib
# export PATH=$PATH:/sandbox/vendor/google/perftools/bin

alias pdev="ssh pendyals@uschi12pdev00"
alias xserv="ssh builder@uschi12bld17"
alias protoc="/Users/pendyals/src/vendor/google/protobuf/2.3.0-ctc1/bin/protoc.sh"
autoload -U colors

# Fix autocomplete for subversion
fpath=(~/bin/zsh $fpath)
autoload -U subversion

export PS1="[%n@%m:%~] $ "

# Set JDK
export JDK_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

# Go go
export GOROOT=~/src/hackspace/go
export GOOS=darwin
export GOARCH=386
export GOBIN=~/src/hackspace/bin

# Add 6g to path
export PATH=~/src/hackspace/bin:~/build/bin:$PATH

# EC2 stuff. Temp place, to be moved out
source ~/.ec2rc

# Python interactive stuff
export PYTHONSTARTUP=~/.python/startup

# Personal tree
export SRI_CMAKE_BUILD=/Users/pendyals/src/hackspace/cmake-build/trunk

export CTC_ZEROCONFIG_PREFIX=devsri
export CTC_ZEROCONFIG_RESOLVER=239.192.6.5
export CLICOLOR=1
export LSCOLORS=dxfxcxdxbxegedabagacad
export CTC_CPP_VENDOR_DIR=/Users/pendyals/src/vendor
export BOOST_BUILD_PATH=/Users/pendyals/src/vendor/boost-build-12-patched
export PATH=/Users/pendyals/bin:/opt/subversion/bin:$PATH

export SVN_EDITOR=vim

# For MacPorts. Or was that Fink?
#test -r /sw/bin/init.sh && . /sw/bin/init.sh

export VIMHOME=/Users/pendyals/src/resource-files/vim

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

export NARWHAL_ENGINE=jsc
export PATH="/Users/pendyals/narwhal/bin:$PATH"
export NARWHAL_ENGINE=jsc

