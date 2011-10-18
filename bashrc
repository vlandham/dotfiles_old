export CLICOLOR=1;export LSCOLORS="cxfxexexDxexexDxDxcxcx";
#osx color terminal
#export CLICOLOR=1
# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1='\[\033[01;31m\]\w\[\033[00m\]\n${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u\[\033[01;32m\]@\[\033[01;34m\]\h\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

export PERL5LIB=/n/site/inst/shared/sys/lib/perl5/5.8.8:/n/site/inst/shared/sys/lib/perl5/site_perl/5.8.8/x86_64-linux-thread-multi:/n/site/inst/shared/sys/lib/perl5/site_perl/5.8.8:/n/site/inst/shared/sys/lib/perl5/site_perl:$PERL5LIB

#export JAVA_HOME=/usr/lib/jvm/java-1.6.0
#export ANT_HOME=~/tools/ant

alias vim='mvim'

#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home 

export BB_INSTALL="$HOME/tools"
export BB_PATH="$HOME/tools/bio.brew"
export NODE_PATH="/usr/local/lib/node"

PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
PATH="$BB_INSTALL/bin:$BB_PATH/bin:$PATH"
export PATH

[[ -s "$BB_INSTALL/bio.brew/bb_load_env" ]] && source "$BB_INSTALL/bio.brew/bb_load_env"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
