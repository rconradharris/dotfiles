# dotfile @ ~/.bash_profile
# Bail out if we're not an interactive session...
[ -z "$PS1" ] && return

# Aliases
alias ls='ls -G'
alias cdcode="cd ~/Documents/code"
alias cdicloud="cd ~/iCloud"
alias ppjson="python -mjson.tool" 
alias ppxml='python -c "import sys, xml.dom.minidom; print xml.dom.minidom.parseString(sys.stdin.read()).toprettyxml()"'

# History control
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# Bash completion
[ -f $(brew --prefix)/etc/bash_completion ] && source $(brew --prefix)/etc/bash_completion

# Custom functions

# Print size of directories 1 level deep
function dirsize() {
    du -h -d1 "$@" | gsort -h
}

# Source all *.bash or *.sh files (recursively) in the ~/.bashrc.d directory
if [[ -d ~/.bashrc.d ]]; then
    for f in $(find ~/.bashrc.d \( -name '*.bash' -o -name '*.sh' \) -print); do
        [[ -r $f ]] && source $f
    done
    unset f
fi
