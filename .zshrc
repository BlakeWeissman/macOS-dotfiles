#TODO: Consider looking into ways to improve this prompt
PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/blake/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Include hidden files in autocomplete
_comp_options+=(globdots)

# Allow arrow controls for completion
zstyle ':completion:*' menu select

alias vim='nvim'
#TODO: Improve this alias if possible
# Go to currently opened file in lf on close
alias lf='
  tmp="$(mktemp)"
  lf -last-dir-path="$tmp" "$@"
  if [ -f "$tmp" ]; then
    dir="$(cat "$tmp")"
    rm -f "$tmp"
    if [ -d "$dir" ]; then
      if [ "$dir" != "$(pwd)" ]; then
        cd "$dir"
      fi
    fi
  fi
'
alias ytaudio='youtube-dl -f 140'
alias mpvart='mpv --audio-display=no'
alias ytaudioart='ytaudio --embed-thumbnail'
alias si='cd ~/Documents/si'

function findstring() {
  grep --color --recursive -F $1 .
}

#TODO: Fix this function
#function findandreplace() {
#  find . -type f | xargs sed -i '' 's/$1/$2/g'
#}

