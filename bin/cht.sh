#!/usr/bin/fish

set selected $(cat ~/tmux/.tmux-cht-command ~/tmux/.tmux-cht-languages | fzf)

if test -z $selected
    exit 0
end

read -P "Enter query: " query

if grep -qs "$selected" ~/tmux/.tmux-cht-languages
    set query $(echo $query | tr " " "+")

    set url "cht.sh/$selected/$query"
    tmux split-window -h fish -c "curl -s $url | less -R"

else
    set url "cht.sh/$selected~$query"
    tmux split-window -h fish -c "curl -s $url | less -R"
end

