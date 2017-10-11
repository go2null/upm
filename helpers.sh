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

IsCommand() {
  command -v "$1" >/dev/null 2>&1
}

# Always print errors
Log() {
	case "$1" in
	info)  [ "$log_level" -ge 1 ] && printf "%s\n" "$app_name: $*"            ;;
	warn)  [ "$log_level" -ge 2 ] && printf "%s\n" "$app_name warning: $*"    ;;
	error)                           printf "%s\n" "$app_name error: $*" >&2  ;;
	debug) [ "$log_level" -ge 4 ] && printf "%s\n" "#| $*"                    ;;
	esac
}

LogDebug() {
	Log 'debug' "$*"
}

LogError() {
	Log 'error' "$*"
}

LogInfo() {
	Log 'info' "$*"
}

LogWarn() {
	Log 'warn' "$*"
}

SetAppFile() {
  app_file="$(readlink -e "$0")"
}

SetAppName() {
  app_name=${app_file##*/}
}

SetAppPath() {
  app_path="${app_file%/*}"
}

SetSudo() {
  [ "$USER" != 'root' ] && IsCommand 'sudo' && SUDO='sudo'
}

SetVerbose() {
	log_level='info'
	verbose='-v'
}
