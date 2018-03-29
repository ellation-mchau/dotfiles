export CHEF_HOME=/opt/chefdk
export RUBY_HOME=/opt/chefdk/embedded
export PATH=$HOME/workspace/dist:$HOME/.rvm/bin:$CHEF_HOME/bin:$RUBY_HOME/bin:/usr/local/opt/gnu-tar/libexec/gnubin:/usr/local/bin:$PATH
export MANPATH="/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH"

shopt -s histappend
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%D %r (%a)] "
export HISTFILE=~/.bash_eternal_history

PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

source $HOME/.bash_lib/z/z.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
  . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi
if [ -f `brew --prefix`/etc/bash_completion.d/git-flow-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-flow-completion.bash
fi

export PROMPT_DIRTRIM=1

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

case "$TERM" in
  xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
  *)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

alias la='ls -A'
alias lah='ls -lah'

alias pjson='python -m json.tool'

alias df='df -H'
alias du='du -ch'

export CLICOLOR=YES

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
