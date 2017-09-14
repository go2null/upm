#!/bin/sh

xbps() {
  case "$1" in
    find)    shift; xbps-query --repository --search "$@" ;;
    info)    shift; xbps_info ;;
    show)    shift; xbps-query -RS "$@" ;;
    lock)    xbps_set "$@" ;;
    unlock)  xbps_set "$@" ;;
    set)     shift; xbps_set "$@" ;;
    list)    shift; xbps_package_list "$@" ;;
    locked)  xbps_package_list "$@" ;;
    orphans) xbps_package_list "$@" ;;
    manual)  xbps_package_list "$@" ;;
    repos)   shift; xbps_repo 'list' "$@" ;;
    upgrade) shift; $SUDO xbps-install --sync --update "$@" ;;
    update)  shift; echo "TODO" ;;
    repo)    shift; xbps_repo "$@" ;;
    repos)   shift; xbps_repo 'list' "$@" ;;
    refresh) $SUDO xbps-install --sync ;;
    *)       $SUDO sh -c "xbps-$*" ;;
  esac
}

xbps_info() {
  xbps-query --repository --search "$@" \
    | grep -vE '^[aflmr]|^so' \
    | grep -E --color=always '^[^:]*[:[:space:]]'
}

xbps_set() {
  case "$1" in
    lock)   xbps-pkgdb -mode 'hold' ;;
    unlock) xbps-pkgdb -mode 'unhold' ;;
    manual) xbps-pkgdb -mode 'manual' ;;
    auto)   xbps-pkgdb -mode 'auto' ;;
    *) exitError "Unknown package set option '$@'" ;;
  esac
}

xbps_package_list() {
  if [ $# -eq 0 ]; then
    option='all'
  else
    option="$1"
    shift
  fi

  case "$option" in
    all)     xbps-query --list-pkgs ;;
    locked)  xbps-query --list-hold-pkgs ;;
    manual)  xbps-query --list-manual-pkgs ;;
    orphans) xbps-query --list-orphans ;;
    *) exitError "Unknown package list option '$@'" ;;
  esac
}

xbps_repo() {
  case "$1" in
    add)     echo TODO ;;
    remove)  echo TODO ;;
    enable)  echo TODO ;;
    disable) echo TODO ;;
    list)    shift; xbps_repo_list "$@" ;;
    *) exitError "Unknown repo option '$@'" ;;
  esac
}

xbps_repo_list() {
  if [ $# -eq 0 ]; then
    option='enabled'
  else
    option="$1"
    shift
  fi

  case "$option" in
    all)      xbps-query --repository --search void-repo ;;
    enabled)  xbps-query --list-repos ;;
    disabled) echo TODO ;;
    *) exitError "Unknown repo list option '$@'" ;;
  esac
}
