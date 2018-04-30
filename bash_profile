# dotfile @ ~/.bash_profile
# Bail out if we're not an interactive session...
[ -z "$PS1" ] && return

# PATH management
# http://superuser.com/questions/39751/add-directory-to-path-if-its-not-already-there
pathinsert() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$1:$PATH"
    fi
}
pathinsert ~/bin
pathinsert ~/Documents/code/simpledot
pathinsert ~/Documents/code/thirdparty/connectiq-sdk-mac-2.4.2/bin
pathinsert /usr/local/opt/go/libexec/bin

# Aliases
alias ls='ls -G'
alias cdcode="cd ~/Documents/code"
alias cddoc="cd ~/Documents"
alias cdicloud="cd ~/iCloud"
alias ppjson="python -mjson.tool" 
alias ppxml='python -c "import sys, xml.dom.minidom; print xml.dom.minidom.parseString(sys.stdin.read()).toprettyxml()"'
alias ctags="`brew --prefix`/bin/ctags"

# History control
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# Bash completion
which brew > /dev/null && [ -f $(brew --prefix)/etc/bash_completion ] && source $(brew --prefix)/etc/bash_completion

# Custom functions

# Print size of directories 1 level deep
function dirsize() {
    du -h -d1 "$@" | sort -h
}

# Source all *.bash or *.sh files (recursively) in the ~/.bashrc.d directory
if [[ -d ~/.bashrc.d ]]; then
    for f in $(find ~/.bashrc.d \( -name '*.bash' -o -name '*.sh' \) -print); do
        [[ -r $f ]] && source $f
    done
    unset f
fi


# Only execute pythonrc for interactive sessions (where `python` was run
# without arguments)
#
# Credit: https://chezsoi.org/lucas/blog/command-history-in-a-python-3-virtualenv.html
python () {
    if [ "$#" -eq 0 ]; then
        PYTHONSTARTUP=~/.pythonrc $(type -P python)
    else
        $(type -P python) "$@"
    fi
}
