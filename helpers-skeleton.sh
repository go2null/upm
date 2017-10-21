#!/bin/sh

# This is the list of all functions called by Switchboard.
# It is used to create default definitions for those functions
# to allow a package manager implementation to only add the functions it
# implemennts.
# It also allows adding new features without having to add to all
# package managers.

PmHelp() {
	ExitNotImplemented "$object $action"
}

RepoAdd() {
	[ -z "$1" ] && ExitMissingArgs '<repo>'

	ExitNotImplemented "$object $action"
}

RepoRemove() {
	[ -z "$1" ] && ExitMissingArgs '<repo>'

	ExitNotImplemented "$object $action"
}
RepoEnable() {
	[ -z "$1" ] && ExitMissingArgs '<repo>'

	ExitNotImplemented "$object $action"
}

RepoDisable() {
	[ -z "$1" ] && ExitMissingArgs '<repo>'

	ExitNotImplemented "$object $action"
}

RepoListAll() {
	ExitNotImplemented "$object $action"
	xbps-query --repository --search 'void-repo'
}

RepoListEnabled() {
	ExitNotImplemented "$object $action"
	xbps-query --list-repos
}

RepoListDisabled() {
	ExitNotImplemented "$object $action"
	ExitNotImplemented "$object $action $option"
}

DbRefresh() {
	ExitNotImplemented "$object $action"
	$SUDO xbps-install --sync
}

PkgFind() {
	ExitNotImplemented "$object $action"
	xbps-query --repository --search "$@"
}

PkgInfo() {
	ExitNotImplemented "$object $action"
}

PkgShow() {
	ExitNotImplemented "$object $action"
}

PkgInstall() {
	ExitNotImplemented "$object $action"
}

PkgUninstall() {
	ExitNotImplemented "$object $action"
}

PkgLock() {
	ExitNotImplemented "$object $action"
}

PkgUnlock() {
	ExitNotImplemented "$object $action"
}

PkgSetManual() {
	ExitNotImplemented "$object $action"
}

PkgSetAuto() {
	ExitNotImplemented "$object $action"
}

PkgListAll()     {
	ExitNotImplemented "$object $action"
}

PkgListLocked()  {
	ExitNotImplemented "$object $action"
}

PkgListManual()  {
	ExitNotImplemented "$object $action"
}

PkgListOrphans() {
	ExitNotImplemented "$object $action"
}

PkgUpgrade() {
	ExitNotImplemented "$object $action"
}

PkgUpdate() {
	ExitNotImplemented "$object $action"
}

Unknown() {
	ExitNotImplemented "$object $action"
}
