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
	ExitNotImplemented "$object $action $option"
}

RepoListEnabled() {
	ExitNotImplemented "$object $action $option"
}

RepoListDisabled() {
	ExitNotImplemented "$object $action $option"
}

DbRefresh() {
	ExitNotImplemented "$object $action"
}

PkgFind() {
	ExitNotImplemented "$object $action"
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
	ExitNotImplemented "$object $action $option"
}

PkgSetAuto() {
	ExitNotImplemented "$object $action $option"
}

PkgListAll()     {
	ExitNotImplemented "$object $action $option"
}

PkgListLocked()  {
	ExitNotImplemented "$object $action $option"
}

PkgListManual()  {
	ExitNotImplemented "$object $action $option"
}

PkgListOrphans() {
	ExitNotImplemented "$object $action $option"
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
