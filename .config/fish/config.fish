if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
end

set PATH /usr/local/bin /usr/sbin $PATH
#set -gx COLORTERM truecolor

# Aliases

## Commun
alias ls="exa"
alias ll="exa --icons -l -F -a"
alias cat="bat"

## Git
alias gf="git fetch"
alias gb="git branch"
alias ga="git add"
alias gc="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias grc="git rm --cached"
alias gdf="git diff"
alias gdff="git diff --name-only"

## Terraform
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply -auto-approve"
alias tfd="terraform destroy -auto-approve"
alias tfo="terraform output --json | jq"

## Python
alias venv="python3 -m venv env"

starship init fish | source
