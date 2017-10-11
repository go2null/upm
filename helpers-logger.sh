#!/bin/sh # this is enable syntax highlighting

# source this file

Log() {
	printf "%s\n" "$app_name: $*"
}

LogDebug() {
	[ "$log_level" = 'debug' ] && Log "[debug] $*"
}

# Always print errors
LogError() {
	Log "[error] $*"
}

LogInfo() {
	[ "$log_level" = 'info' ] && Log "$*"
}

LogWarn() {
	[ "$log_level" = 'warn' ] && Log "[warning] $*"
}

SetVerbose() {
	log_level='info'
	verbose='-v'
}
