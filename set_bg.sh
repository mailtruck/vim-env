#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Set vim background="
TITLE="Title here"
MENU="Choose one of the following options:"

OPTIONS=(
  1 "dark"
  2 "light"
)

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

                clear
                  case $CHOICE in
                    1)
                    echo "setting to dark"
                    echo "set background=dark" >> $HOME/.vimrc
                    ;;
                    2)
                    echo "setting to light"
                    echo "set background=light" >> $HOME/.vimrc
                    ;;
                  esac
