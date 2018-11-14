venvcd() {
    declare -f deactivate > /dev/null
    venv=$?
    builtin cd $1
    if [ -e bin/activate ]; then
        if [ $venv -eq 1 ]; then
            source bin/activate;
        fi
    fi
}
export -f venvcd
alias cd='venvcd'
