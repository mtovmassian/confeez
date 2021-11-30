#!/usr/bin/env bash

repeat() {
    time="$1"
    function="$2"
    args="${@:3}"
    while true
    do
        ("$function" "$args")
        sleep "$time"
    done

}

printf_r_date() {
    args="$@"
    if [[ -z "$args" ]]
    then
        printf "\r$(date)"
    else
        printf "\r$(date "$args")"
    fi
}

clock() {
    args="$@"
    repeat 1 printf_r_date "$args"
}

