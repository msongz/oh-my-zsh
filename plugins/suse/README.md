# suse

**Maintainer**: [r-darwish](https://github.com/r-darwish)

 Alias for Zypper according to the official Zypper's alias

 To use it add `suse` to the plugins array in you zshrc file.

```zsh
plugins=(... suse)
```

## Main commands

| Alias            | Commands                      | Description                                                    |
| ---------------- | ----------------------------- | -------------------------------------------------------------- |
| z                | `sudo zypper`                 | call zypper                                                    |
<<<<<<< HEAD
| zh               | `sudo zypper -h`              | print help                                                     |
| zhse             | `sudo zypper -h se`           | print help for the search command                              |
| zlicenses        | `sudo zypper licenses`        | prints a report about licenses and EULAs of installed packages |
| zps              | `sudo zypper ps`              | list process using deleted files                               |
| zshell           | `sudo zypper shell`           | open a zypper shell session                                    |
| zsource-download | `sudo zypper source-download` | download source rpms for all installed packages                |
| ztos             | `sudo zypper tos`             | shows  the  ID string of the target operating system           |
| zvcmp            | `sudo zypper vcmp`            | tell whether version1 is older or newer than version2          |
=======
| zh               | `zypper -h`                   | print help                                                     |
| zhse             | `zypper -h se`                | print help for the search command                              |
| zlicenses        | `zypper licenses`             | prints a report about licenses and EULAs of installed packages |
| zps              | `sudo zypper ps`              | list process using deleted files                               |
| zshell           | `sudo zypper shell`           | open a zypper shell session                                    |
| zsource-download | `sudo zypper source-download` | download source rpms for all installed packages                |
| ztos             | `zypper tos`                  | shows the ID string of the target operating system             |
| zvcmp            | `zypper vcmp`                 | tell whether version1 is older or newer than version2          |
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8

## Packages commands

| Alias | Commands          | Description                                                        |
| ----- | ----------------- | ------------------------------------------------------------------ |
| zin   | `sudo zypper in`  | install packages                                                   |
| zinr  | `sudo zypper inr` | install newly added packages recommended by already installed ones |
| zrm   | `sudo zypper rm`  | remove packages                                                    |
| zsi   | `sudo zypper si`  | install source of a package                                        |
| zve   | `sudo zypper ve`  | verify dependencies of installed packages                          |

## Updates commands

| Alias  | Commands            | Description            |
| ------ | ------------------- | ---------------------- |
| zdup   | `sudo zypper dup`   | upgrade packages       |
<<<<<<< HEAD
| zlp    | `sudo zypper lp`    | list necessary patches |
| zlu    | `sudo zypper lu`    | list updates           |
=======
| zlp    | `zypper lp`         | list necessary patches |
| zlu    | `zypper lu`         | list updates           |
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
| zpchk  | `sudo zypper pchk`  | check for patches      |
| zup    | `sudo zypper up`    | update packages        |
| zpatch | `sudo zypper patch` | install patches        |

## Request commands

| Alias         | Commands                   | Description                                          |
| ------------- | -------------------------- | ---------------------------------------------------- |
<<<<<<< HEAD
| zif           | `sudo zypper if`           | display info about packages                          |
| zpa           | `sudo zypper pa`           | list packages                                        |
| zpatch-info   | `sudo zypper patch-info`   | display info about patches                           |
| zpattern-info | `sudo zypper pattern-info` | display info about patterns                          |
| zproduct-info | `sudo zypper product-info` | display info about products                          |
| zpch          | `sudo zypper pch`          | list all patches                                     |
| zpd           | `sudo zypper pd`           | list products                                        |
| zpt           | `sudo zypper pt`           | list patterns                                        |
| zse           | `sudo zypper se`           | search for packages                                  |
| zwp           | `sudo zypper wp`           | list all packages providing the specified capability |
=======
| zif           | `zypper if`                | display info about packages                          |
| zpa           | `zypper pa`                | list packages                                        |
| zpatch-info   | `zypper patch-info`        | display info about patches                           |
| zpattern-info | `zypper pattern-info`      | display info about patterns                          |
| zproduct-info | `zypper product-info`      | display info about products                          |
| zpch          | `zypper pch`               | list all patches                                     |
| zpd           | `zypper pd`                | list products                                        |
| zpt           | `zypper pt`                | list patterns                                        |
| zse           | `zypper se`                | search for packages                                  |
| zwp           | `zypper wp`                | list all packages providing the specified capability |
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8

## Repositories commands

| Alias | Commands            | Description                              |
| ----- | ------------------- | ---------------------------------------- |
| zar   | `sudo zypper ar`    | add a repository                         |
| zcl   | `sudo zypper clean` | clean cache                              |
<<<<<<< HEAD
| zlr   | `sudo zypper lr`    | list repositories                        |
=======
| zlr   | `zypper lr`         | list repositories                        |
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
| zmr   | `sudo zypper mr`    | modify repositories                      |
| znr   | `sudo zypper nr`    | rename repositories (for the alias only) |
| zref  | `sudo zypper ref`   | refresh repositories                     |
| zrr   | `sudo zypper rr`    | remove repositories                      |

## Services commands
| Alias | Commands           | Description                                                    |
| ----- | ------------------ | -------------------------------------------------------------- |
| zas   | `sudo zypper as`   | adds a service specified by URI to the system                  |
| zms   | `sudo zypper ms`   | modify properties of specified services                        |
| zrefs | `sudo zypper refs` | refreshing a service mean executing the service's special task |
| zrs   | `sudo zypper rs`   | remove specified repository index service from the system      |
<<<<<<< HEAD
| zls   | `sudo zypper ls`   | list services defined on the system                            |
=======
| zls   | `zypper ls`        | list services defined on the system                            |
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8

## Package Locks Management commands
| Alias | Commands         | Description                         |
| ----- | ---------------- | ----------------------------------- |
| zal   | `sudo zypper al` | add a package lock                  |
| zcl   | `sudo zypper cl` | remove unused locks                 |
<<<<<<< HEAD
| zll   | `sudo zypper ll` | list currently active package locks |
=======
| zll   | `zypper ll`      | list currently active package locks |
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
| zrl   | `sudo zypper rl` | remove specified package lock       |
