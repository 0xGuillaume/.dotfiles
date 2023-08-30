# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi


# ALIAS -------------------------------------------------------------- >>>

# Git
alias gf="git fetch"
alias gb="git branch"
alias ga="git add"
alias gc="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias grc="git rm --cached"
alias gdf="git diff"
alias gdff="git diff --name-only"

# Terraform
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply -auto-approve"
alias tfd="terraform destroy -auto-approve"
alias tfo="terraform output --json | jq"

# Python
alias venv="python3 -m venv env"

# CLI
alias ll="exa --icons -l -F -a"
alias ls="exa"
alias cat="bat"

# POWERLINE ---------------------------------------------------------- >>>
if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bash/powerline.sh
fi


unset rc
