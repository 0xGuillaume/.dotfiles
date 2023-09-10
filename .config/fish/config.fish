if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
end

# Alias
alias ls="exa"
alias ll="exa -l"

starship init fish | source
