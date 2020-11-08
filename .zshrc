##################
## shell  setup ##
##################

autoload -Uz vcs_info
precmd() { vcs_info }
precmd() {
    psvar=()
    vcs_info
    [[ -n $vcs_info_msg_0_ ]] && print -v 'psvar[1]' -Pr -- "$vcs_info_msg_0_"
}

PS1="%F{green}%B%K{green}█▓▒░%F{white}%K{green}%B%n  %b%F{green}%K{black}█▓▒░%F{white}%K{black}%B %D{%a %b %d} %D{%I:%M:%S%P} %{%}%F{white}%K{black}%B
%1~/%b%k%f %(1v.%F{magenta}%1v%f.) %# " 

###################
## zsh paths     ##
###################

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

alias myConfigs='/usr/bin/git --git-dir=/Users/juicebox/.myConfigs/ --work-tree=/Users/juicebox'
