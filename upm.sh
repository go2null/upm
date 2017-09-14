#!/bin/sh

VERSION='0.1.0+20170913'

main() {
  [ $# -eq 0 ] && exitHelp

  case "$1" in
    -H|--help)    exitHelp    ;;
    -V|--version) exitVersion ;;
  esac

  setPackageManager
  [ -z "$PACKAGE_MANAGER" ] && exitError 'Cannot find a known Package Manager.'

  setSudo
  "$PACKAGE_MANAGER" "$@"
}

exitError() {
  printf "%s\n" "ERROR: $*" 2>&
  printHelp 2>&
  exit 1
}

exitHelp() {
  printHelp
  exit
}

exitVersion() {
  printf "%s\n" "$APP_NAME v$VERSION"
  exit
}

printHelp() {
	printf %s "\
    VERSION: $version

  USAGE: $APP_NAME <object> <action> <options> <params>

  PACKAGE ACTIONS
  find <package>         - search index for package
  info <package>         - show quick info about package
  show <package>         - show detailed info about package
  install <package>      - install a new package
  remove <package>       - remove an installed package
  lock <package>         - lock a package to prevent updating
  unlock <package>       - unlock a package to allow updating
  set <option> <package> - set a package as [manually|auto] installed
  list [<option>]        - list [all(default)|locked|orphans|manual] installed packages
  orphans                - alias for 'list orphans'
  locked                 - alias for 'list locked'
  upgrade                - upgrade packages and dependencies
  update                 - like 'upgrade', but only for non-Major-version-number changes

  REPO ACTIONS
  repo add <repo>      - add a repo
  repo remove <repo>   - remove a repo
  repo <action> <repo> - [enable|disable] a repo
  repo list [<option>] - list [enabled(default)|disabled|all] repos
  repos                - alias for 'repo list'

  INDEX ACTIONS
  refresh - update the package list from all repos

  APP OPTIONS
  -H, --help       - show this help
  -V, --version    - display version

  DESCRIPTION
  * A Universal cross-distribution (Unix) Package Manager front-end to all
    GNU/Linux (Unix) package.
  * A single, and sane?, way of working on multiple GNU/Linux distros.

  EXAMPLES
  TODO $(basename -- $0) .ssh/id_rsa
  TODO $(basename -- $0) Documents/

  SIMILAR/INSPIRATION/REFERENCES
  * http://yum.baseurl.org/wiki/apt2yum
  "
}

setAppName() {
  APP_NAME=$(basename -- "$0")
}

setPackageManager() {
  PACKAGE_MANAGER='xbps'
}

setSudo() {
  [ "$USER" != 'root' ] && which sudo >/dev/null && SUDO='sudo'
}

main "$@"
