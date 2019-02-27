# Shell

alias bashp="subl ~/code/dotfiles/shell/.aliasesprivate.sh"
alias basha="subl ~/code/dotfiles/shell/.aliases.sh"

# Transversing

alias ..="cd .."
alias ...="cd ../.."

# Composer

alias comp="composer install"
alias compd="composer dump-autoload"
alias compi="composer install"
alias compr="composer require"

function complinklaravel {
  composer config repositories.local '{"type": "path", "url": "/home/vagrant/code/laravel-packages/'$1'"}' --file composer.json
}

# DNS

alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Git

alias gb="git branch"
alias gbr="git branch -r"
alias gbup="git branch -vv"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcd="git checkout development"
alias gcm="git checkout master"
alias gcs="git checkout staging"
alias gcom="git commit -am"
alias gdlocal="git branch -d" 
alias gdremote="git push origin --delete" 
alias glone="git log --oneline"
alias gm="git merge --no-ff" # esc :wq (Quit vim)
alias gpush="git push origin"
alias gpush1st="git push -u origin"
alias gs="git status"

function gtag {
  git tag -a $1 -m \"$1\" && git push --tags origin
}

# Homestead

function hs {
  if [ $# -eq 0 ]; then
    cd ~/Homestead
  else
    cd ~/Homestead && vagrant "$@"
  fi
}

function hsssl {
  # $1 local.domain.co.uk
  # $2 localhost folder name
  
  # Vagrant Version  -c
  hs ssh -c "cp /etc/nginx/ssl/$1.crt /home/vagrant/code/$2"

  # Bash Version -t
  # hs ssh -- -t "cp /etc/nginx/ssl/$1.crt /home/vagrant/code/$2"
}

alias hsyaml="subl ~/Homestead/Homestead.yaml"
alias hsp="cd ~/Homestead && vagrant provision"
alias hsr="cd ~/Homestead && vagrant reload"
alias hsrp="cd ~/Homestead && vagrant reload --provision"

# Laravel

alias art="php artisan"

# npm

function npmi {
  npm i "$@" ----save-dev
}

alias npml="npm list --depth=0"
alias npmp="npm prune"

# PHP Unit

alias p="phpunit"
alias pf="phpunit --filter"

# Sublime

alias sb="subl . -a";

# function sbo {
#   cd ~/code/$1 && subl . -a
# }

# PATH

export PATH="$PATH:$HOME/.composer/vendor/bin"
