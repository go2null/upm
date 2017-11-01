#!/bin/sh # this is enable syntax highlighting

# source this file

Switchboard() {
	object_action="$1"
	case "$1" in
	m|pm)      shift; Pm          "$@" ;;
	help)             Pm          "$@" ;;
	r|repo)    shift; Repo        "$@" ;;
	add)              Repo        "$@" ;;
	remove)           Repo        "$@" ;;
	enable)           Repo        "$@" ;;
	disable)          Repo        "$@" ;;
	repos)     shift; Repo 'list' "$@" ;;
	d|db)      shift; Db          "$@" ;;
	refresh)          Db          "$@" ;;
 	p|pkg)     shift; Pkg         "$@" ;;
 	find)             Pkg         "$@" ;;
 	info)             Pkg         "$@" ;;
 	show)             Pkg         "$@" ;;
 	install)          Pkg         "$@" ;;
 	uninstall)        Pkg         "$@" ;;
 	lock)             Pkg         "$@" ;;
 	unlock)           Pkg         "$@" ;;
 	set)              Pkg         "$@" ;;
 	list)             Pkg         "$@" ;;
 	orphans)          Pkg 'list'  "$@" ;;
 	locked)           Pkg 'list'  "$@" ;;
 	upgrade)          Pkg         "$@" ;;
 	update)           Pkg         "$@" ;;
	*)       ExitInvalidArgs "$*" ;;
	esac
}

Pm() {
	object='pm'
	action="$1"
	shift
	case "$action" in
	help) PmHelp ;;
	*) ExitInvalidArgs "$object $action $*" ;;
	esac
}

Repo() {
	object='repo'
	action="$1"
	shift
	case "$action" in
	add)     RepoAdd     "$@" ;;
	remove)  RepoRemove  "$@" ;;
	enable)  RepoEnable  "$@" ;;
	disable) RepoDisable "$@" ;;
	list)    RepoList    "$@" ;;
	*) ExitInvalidArgs "$object $action $*" ;;
	esac
}

RepoList() {
	if [ $# -eq 0 ]; then
		option='enabled'
	else
		option="$1"
		shift
	fi

	case "$option" in
	all)      RepoListAll ;;
	enabled)  RepoListEnabled ;;
	disabled) RepoListDisabled ;;
	*) ExitInvalidArgs "$object $action $option $*" ;;
	esac
}

Db() {
	object='db'
	action="$1"
	shift
	case "$action" in
	refresh) DbRefresh ;;
	*) ExitInvalidArgs "$object $action $*" ;;
	esac
}

Pkg() {
	object='pkg'
	action="$1"
	shift
	case "$action" in
 	find)      PkgFind      "$@" ;;
 	info)      PkgInfo      "$@" ;;
 	show)      PkgShow      "$@" ;;
 	install)   PkgInstall   "$@" ;;
 	uninstall) PkgUninstall "$@" ;;
 	lock)      PkgLock      "$@" ;;
 	unlock)    PkgUnlock    "$@" ;;
 	set)       PkgSet       "$@" ;;
 	list)      PkgList      "$@" ;;
 	upgrade)   PkgUpgrade   "$@" ;;
 	update)    PkgUpdate    "$@" ;;
	*) ExitInvalidArgs "$object $action $*" ;;
	esac
}

PkgSet() {
	option="$1"
	case "$option" in
	manual) PkgSetManual ;;
	auto)   PkgSetAuto   ;;
	*) ExitInvalidArgs "$object $action $option $*" ;;
	esac
}

PkgList() {
	if [ $# -eq 0 ]; then
		option='all'
	else
		option="$1"
		shift
	fi

	case "$option" in
	all)     PkgListAll;;
	locked)  PkgListLocked;;
	manual)  PkgListManual;;
	orphans) PkgListOrphans;;
	*) ExitInvalidArgs "$object $action $option $*" ;;
	esac
}
