#ulimit -n 16384
#ulimit -u 2048

export PS1="👻👨‍🍳\[\033[38;5;6m\]\w [\$DOCKER_HOST\$KUBERNETES_HOST] \n\\$ \[$(tput sgr0)\]"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HISTCONTROL=ignoreboth:erasedups

alias rb=". ~/.bashrc"
alias ls="exa"
alias ll="ls -alF -s type"
alias lm="ls -l -s modified"
cl() {
  ll $@
  cd $@
}
alias a="atom ."
alias keynotehighlight="pbpaste | highlight --syntax=js -O rtf | pbcopy"
alias resetdns="sudo killall -HUP mDNSResponder"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias bigtext="toilet -W -f mono12"
alias k="kubectl"
alias d="docker"
alias dc="docker-compose"
alias master="git checkout master && git pull"
alias notify="osascript -e 'display notification \"Your task has been done!\" with title \"Done\"'"
alias airpods="BluetoothConnector -c 7C-04-D0-96-55-BB --notify"
alias airpro="BluetoothConnector -c D0-65-44-C6-6A-3E --notify"
alias n="node -r esm"

drm() { docker rm $(docker ps -q -a); }
dri() { docker rmi -f $(docker images -q); }

google() {
  open "https://www.google.dk/search?q=$(echo  $@ | sed 's/ /%20/g')"
}

cloudbuild() {
  open "https://console.cloud.google.com/cloud-build/builds?project=$(gcloud config list --format 'value(core.project)')"
}

mark() {
  open -a "Typora" $@
}

jdk() {
  version=$1
  export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
  java -version
}

export GOPATH=~/gocode/
export PATH="/Users/kevinsimper/gocode/bin:$PATH"

eval "$(jump shell bash)"
eval "$(hub alias -s)"

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

source ~/dotfiles/.gitconfig
