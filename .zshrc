# oh-my-zsh config
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source .oh-my-zsh/oh-my-zsh.sh
plugins+=(zsh-nvm)
# End zsh config

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Python config
## Note: I was having problems getting virtualenvwrapper working
export WORKON_HOME=~/.virtualenvs
source ~/.virtualenvs/user/bin/activate
# End python config

# rbenv config
export PATH="$HOME/.rbenv/bin:$PATH"
export RBENV_VERSION="2.4.0"
# End rbenv config
