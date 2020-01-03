. ~/.bashrc

export PS1="\W $ "
export PATH=~/bin:~/go/bin:$PATH
export GOPATH=~/go

export VIRTUALENVWRAPPER_PYTHON=`which python`
source `which virtualenvwrapper.sh`
export WORKON_HOME=~/venv

alias ls='ls -G'
alias ll='ls -Gl'
alias gb='git rev-parse --abbrev-ref HEAD'
alias tf='terraform'
alias tg='terragrunt'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."

br() {
  echo features/jbaugh/$1
}

token() {
  oathtool --totp -b `cat ~/.ssh/${1:-aws}_mfa`
}

ticket() {
  gb | cut -d'/' -f 3
}

new_ticket() {
  git checkout -b `br $1` develop
}

export GPG_TTY=$(tty)
