#!/bin/sh # this is to enable syntax highlighting

# source this file

SetAppFile() {
  app_file="$(readlink -e "$0")"
}

SetAppName() {
  app_name=${app_file##*/}
}

SetAppPath() {
  app_path="${app_file%/*}"
}

SetAppInfo() {
	SetAppFile
	SetAppName
	SetAppPath
}
