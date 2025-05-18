#!/bin/zsh

export DEVENV="$HOME/devenv"
export RED="\033[31m"
export YELLOW="\033[33m"
export RESET="\033[0m"

function ask_and_reload () {
  echo -e "Do you want to Install/Reinstall $RED$1$RESET from $YELLOW$2$RESET ?"
  select decision in "Yes" "No" "Exit"; do
    case "$decision" in
      [Yy]'es' )
        eval "cp $2 $1" && echo "$1 was installed."
        if [[ "$3" == "true" ]]; then
          eval "source $1" && echo "$1 was sourced."
        fi
        break;;
      [Ee]'xit' )
        exit 0;;
      * )
        echo "skipped"
        break;;
    esac
  done
}

ask_and_reload "~/.zshrc" "$DEVENV/shell/zshrc" "true"
ask_and_reload "~/.vimrc" "$DEVENV/vim/vimrc"
ask_and_reload "~/.gitconfig" "$DEVENV/git/gitconfig"
