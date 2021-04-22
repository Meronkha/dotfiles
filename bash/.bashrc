#!/bin/bash
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
source $DOTFILES/bash/.aliases

export CLICOLOR=1
export PS1="omer\[\e[31m\] \[\e[m\]\[\e[31m\]:\[\e[m\]\[\e[31m\]:\[\e[m\] \[\e[32m\]\w\[\e[m\] \[\e[34m\]»\[\e[m\] "

export PATH="$HOME/.rbenv/bin:$PATH"
export LSCOLORS=cxgxfxexbxegedabagacad
export DOTFILES=$HOME/dotfiles
export EDITOR='vim'
export VISUAL='vim'
export GEM_HOME="$HOME/.gem"
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go

PATH="~/.rbenv/shims:/usr/local/bin:/usr/bin:/bin"
PATH="$PATH~/.rbenv/bin"
PATH="$PATH:/usr/local/opt/python/libexec/bin"
PATH="$PATH:/usr/local/lib/ruby/gems/2.6.0/bin"
PATH="$PATH:/usr/local/opt/ruby/bin"
PATH="$PATH:/usr/local/bin"
PATH="$PATH:/usr/bin"
PATH="$PATH:/bin"
PATH="$PATH:/usr/sbin"
PATH="$PATH:/usr/local/Cellar/postgresql@11/$( ls -tr /usr/local/Cellar/postgresql@11 | tail -n 1)/bin"
PATH="$PATH:/usr/local/Cellar/postgresql@9.6/$( ls -tr /usr/local/Cellar/postgresql@9.6 | tail -n 1)/bin"
PATH=$PATH:$GOROOT/bin:$GOPATH/bin 
export PATH

export HOMEBREW_NO_INSECURE_REDIRECT=1
# export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_NO_ANALYTICS=1


[ -f ~/.private-env ] && source ~/.private-env

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/omer/google-cloud-sdk/path.bash.inc' ]; then . '/Users/omer/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/omer/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/omer/google-cloud-sdk/completion.bash.inc'; fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
