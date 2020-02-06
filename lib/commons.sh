#!/usr/bin/env bash

reload_bash() {
    print_command "source ~/.bashrc"
    source ~/.bashrc
}

get_color_codes() {
    for i in {0..255}
    do
        echo $(tput setaf $i)"COLOR CODE: $i"
    done
}

get_weather() {
  city="${1}"
  curl -X GET http://wttr.in/"${city}"
}

alias cl="clear"

alias copy="xclip -selection clipboard"

alias paste="xclip -selection clipboard -o"

alias shrc="reload_bash"

alias weather="get_weather"

alias ll="ls -alFh"

alias map="xargs -n1"

alias ipy="ipython"

alias color_codes="get_color_codes"

