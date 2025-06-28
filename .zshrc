tmux

fortune | cowsay -f stegosaurus

export AWS_PROFILE=localstack

export GOPATH=~/go
export GOROOT="$(brew --prefix golang)/libexec"

export PATH=~/.local/bin:$PATH
export PATH=$PATH:$GOPATH/bin

zstyle ':omz:alpha:lib:git' async-prompt no

[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
function kubectl() { 
	echo "+ kubectl --context $(kubectx -c) -n $(kubens -c) $@">&2;
        command kubectl $@;
 }


alias gitback="git switch -"
alias qbecdiff="qbec diff --ignore-annotation qbec.io/creator --ignore-annotation deployed-at --ignore-annotation deployed-by --ignore-annotation deployed-from"

# kube context switch
alias k-d="kubectx o-dev"
alias k-s="kubectx o-stg"
alias k-p="kubectx o-prod"
alias k-i="kubectx o-infra-ts"
alias k-o="kubectx o-obs"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="sobole"

plugins=(
	git
	zsh-autosuggestions
	golang
)

source $ZSH/oh-my-zsh.sh

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

eval "$(direnv hook zsh)"


function anonbot () { curl -XPOST '185.68.21.28:8000' -s -d "$*" -o /dev/null; }

export PATH=$PATH:~/.o3-cli/bin
