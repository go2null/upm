USAGE: `upm <object> <action> <options> <params>`

PACKAGE ACTIONS
`find <package>`         - search index for package
`info <package>`         - show quick info about package
`show <package>`         - show detailed info about package
`install <package>`      - install a new package
`remove <package>`       - remove an installed package
`lock <package>`         - lock a package to prevent updating
`unlock <package>`       - unlock a package to allow updating
`set <option> <package>` - set a package as [manually|auto] installed
`list [<option>]`        - list [all(default)|locked|orphan|manual] installed packages
`orphans`                - alias for `list orphans`
`locked`                 - alias for `list locked`
`upgrade`                - upgrade packages and dependencies
`update`                 - like `upgrade`, but only for non-Major-version-number changes

REPO ACTIONS
`repo add <repo>`      - add a repo
`repo remove <repo>`   - remove a repo
`repo <action> <repo>` - [enable|disable] a repo
`repo list [<option>]` - list [enabled(default)|disabled|all] repos
`repos`                - alias for `repo list`

INDEX ACTIONS
`refresh` - update the package list from all repos

APP OPTIONS
`-H`, `--help`       - show this help
`-V`, `--version`    - display version

DESCRIPTION
* A Universal cross-distribution (Unix) Package Manager front-end to all
GNU/Linux (Unix) package.
* A single, and sane?, way of working on multiple GNU/Linux distros.

EXAMPLES
`upm find upm`
`upm install upm`

SIMILAR/INSPIRATION/REFERENCES
* http://yum.baseurl.org/wiki/apt2yum

DEPENDENCIES: POSIX shell, `readlink`

HOMEPAGE: https://gitlab.com/go2null/upm
