#!/bin/sh # this is enable syntax highlighting

# source this file

IsCommand() {
  command -v "$1" >/dev/null 2>&1
}

SetSudo() {
  [ "$USER" != 'root' ] && IsCommand 'sudo' && SUDO='sudo'
}
