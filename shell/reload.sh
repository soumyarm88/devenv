#!/bin/bash

function ask_and_reload () {
  eval "ls $1"
  eval "ls $2"
  echo "Install/Reinstall $1"
  select decision in "Yes" "No" "Exit"; do
    case "$decision" in
      [Yy]'es' )
        eval "cp $2 $1" && eval "source $1" && echo "$1 was installed"
        break;;
      [Ee]'xit' )
        exit 0;;
      * )
        echo "skipped"
        break;;
    esac
  done
}

ask_and_reload "~/.zshrc" "$DEVBOX/shell/zshrc"
ask_and_reload "~/.vimrc" "$DEVBOX/vim/vimrc"
ask_and_reload "~/.gitconfig" "$DEVBOX/git/gitconfig"
