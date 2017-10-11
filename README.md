DESCRIPTION
- A Universal cross-distribution (Unix) Package Manager front-end to all
GNU/Linux (Unix) package managers.
- A single, and sane?, way of working on multiple GNU/Linux distros.

USAGE: `upm <options> <object> <action> <options> <args>`

APP OPTIONS
`--debug`            - show debug messages
`-h`, `--help`       - show this help
`-V`, `--version`    - display version
`-v`, `--verbose`    - show progress info messages

OBJECTS
`pm`   - package manager
`repo` - remote package repository
`db`   - local database index of available packages
`pkg`  - package name

PACKAGE MANAGER ACTIONS
`[pm] help`   - display the package manager help
`[pm] <args>` - pass `<args>` directly to the package manager

REPO ACTIONS
`[repo] add <repo>`      - add a repo
`[repo] remove <repo>`   - remove a repo
`[repo] <action> <repo>` - [`enable`|`disable`] a repo
`repo list [<option>]`   - list [`enabled`(default)|`disabled`|`all`] repos
`repos`                  - alias for `repo list`

DATABASE/INDEX ACTIONS
`[db] refresh` - update the package list from all repos

PACKAGE ACTIONS
`[pkg] find <package>`         - search index for package
`[pkg] info <package>`         - show quick info about package
`[pkg] show <package>`         - show detailed info about package
`[pkg] install <package>`      - install a new package
`[pkg] uninstall <package>`    - remove an installed package
`[pkg] lock <package>`         - lock a package to prevent updating
`[pkg] unlock <package>`       - unlock a package to allow updating
`[pkg] set <option> <package>` - set a package as [`manual`|`auto`] installed
`[pkg] list [<option>]`        - list [`all`(default)|`locked`|`orphan`|`manual`] installed packages
`[pkg] orphans`                - alias for `pkg list orphans`
`[pkg] locked`                 - alias for `pkg list locked`
`[pkg] upgrade`                - upgrade packages and dependencies
`[pkg] update`                 - like `upgrade`, but only for non-Major-version-number changes

EXAMPLES
`upm find upm`
`upm install upm`

DEPENDENCIES: POSIX shell, `readlink`, `sudo`

SIMILAR/INSPIRATION/REFERENCES
- http://yum.baseurl.org/wiki/apt2yum

HOMEPAGE: https://gitlab.com/go2null/upm
