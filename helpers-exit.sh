#!/bin/sh # this is enable syntax highlighting

# source this file

ExitError() {
  LogError "$*"
  exit 1
}

ExitHelp() {
  cat "$app_path/README.md" | tr -d '`'
	ExitVersion "$1"
}

ExitVersion() {
	printf "\n%s" 'VERSION: '
	cat "$app_path/VERSION"
  exit $1
}

ExitInvalidArgs() {
	ExitError "Invalid arguments '$*'"
}

# object action option args
ExitMissingArgs() {
	ExitError "Missing argument(s) '$*'"
}

ExitNotImplemented() {
	ExitError "'$*' is not implemented"
}
