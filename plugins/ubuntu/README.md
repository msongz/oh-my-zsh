# Ubuntu plugin

This plugin adds completions and aliases for [Ubuntu](https://www.ubuntu.com/).

<<<<<<< HEAD
To use it, add `ubuntu` to the plugins array in your zshrc file: 
=======
To use it, add `ubuntu` to the plugins array in your zshrc file:
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8

```zsh
plugins=(... ubuntu)
```

## Aliases

<<<<<<< HEAD
Commands that use `$APT` will use apt if installed or defer to apt-get otherwise. 

| Alias   | Command                                                                | Description                                                                                       |
|---------|------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|
| acs     | `apt-cache search`                                                     | Search the apt-cache with the specified criteria                                                  |
| acp     | `apt-cache policy`                                                     | Display the package source priorities                                                             | 
| afs     | `apt-file search --regexp`                                             | Perform a regular expression apt-file search                                                      |
| afu     | `sudo apt-file update`                                                 | Generates or updates the apt-file package database                                                | 
| ag      | `sudo $APT`                                                            | Run apt-get with sudo                                                                             | 
| aga     | `sudo $APT autoclean`                                                  | Clears out the local reposityory of retrieved package files that can no longer be downloaded      | 
| agb     | `sudo $APT build-dep <source_pkg>`                                     | Installs/Removes packages to satisfy the dependencies of a specified build pkg                    | 
| agc     | `sudo $APT clean`                                                      | Clears out the local repository of retrieved package files leaving everything from the lock files | 
| agd     | `sudo $APT dselect-upgrade`                                            | Follows dselect choices for package installation                                                  | 
| agi     | `sudo $APT install <pkg>`                                              | Install the specified package                                                                     | 
| agli    | `apt list --installed`                                                 | List the installed packages                                                                       | 
| aglu    | `sudo apt-get -u upgrade --assume-no`                                  | Run an apt-get upgrade assuming no to all prompts                                                 | 
| agp     | `sudo $APT purge <pkg>`                                                | Remove a package including any configuration files                                                | 
| agr     | `sudo $APT remove <pkg>`                                               | Remove a package                                                                                  | 
| ags     | `$APT source <pkg>`                                                    | Fetch the source for the specified package                                                        | 
| agu     | `sudo $APT update`                                                     | Update package list                                                                               | 
| agud    | `sudo $APT update && sudo $APT dist-upgrade`                           | Update packages list and perform a distribution upgrade                                           | 
| agug    | `sudo $APT upgrade`                                                    | Upgrade available packages                                                                        | 
| agar    | `sudo $APT autoremove`                                                 | Remove automatically installed packages no longer needed                                          | 
| aguu    | `sudo $APT update && sudo $APT upgrade`                                | Update packages list and upgrade available packages                                               | 
| allpkgs | `dpkg --get-selections \| grep -v deinstall`                           | Print all installed packages                                                                      | 
| kclean  | `sudo aptitude remove -P ?and(~i~nlinux-(ima\|hea) ?not(~n$(uname -r)))`  |Remove ALL kernel images and headers EXCEPT the one in use                                         |
| mydeb   | `time dpkg-buildpackage -rfakeroot -us -uc`                            | Create a basic .deb package                                                                       |
| ppap    | `sudo ppa-purge <ppa>`                                                 | Remove the specified PPA                                                                          | 
=======
Commands that use `$APT` will use `apt` if installed or defer to `apt-get` otherwise.

| Alias   | Command                                                                  | Description                                                                                       |
|---------|--------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|
| age     | `sudo $APT`                                                              | Run apt-get with sudo                                                                             |
| acs     | `apt-cache search`                                                       | Search the apt-cache with the specified criteria                                                  |
| acp     | `apt-cache policy`                                                       | Display the package source priorities                                                             |
| afs     | `apt-file search --regexp`                                               | Perform a regular expression apt-file search                                                      |
| afu     | `sudo apt-file update`                                                   | Generates or updates the apt-file package database                                                |
| aga     | `sudo $APT autoclean`                                                    | Clears out the local reposityory of retrieved package files that can no longer be downloaded      |
| agb     | `sudo $APT build-dep <source_pkg>`                                       | Installs/Removes packages to satisfy the dependencies of a specified build pkg                    |
| agc     | `sudo $APT clean`                                                        | Clears out the local repository of retrieved package files leaving everything from the lock files |
| agd     | `sudo $APT dselect-upgrade`                                              | Follows dselect choices for package installation                                                  |
| agi     | `sudo $APT install <pkg>`                                                | Install the specified package                                                                     |
| agli    | `apt list --installed`                                                   | List the installed packages                                                                       |
| aglu    | `sudo apt-get -u upgrade --assume-no`                                    | Run an apt-get upgrade assuming no to all prompts                                                 |
| agp     | `sudo $APT purge <pkg>`                                                  | Remove a package including any configuration files                                                |
| agr     | `sudo $APT remove <pkg>`                                                 | Remove a package                                                                                  |
| ags     | `$APT source <pkg>`                                                      | Fetch the source for the specified package                                                        |
| agu     | `sudo $APT update`                                                       | Update package list                                                                               |
| agud    | `sudo $APT update && sudo $APT dist-upgrade`                             | Update packages list and perform a distribution upgrade                                           |
| agug    | `sudo $APT upgrade`                                                      | Upgrade available packages                                                                        |
| agar    | `sudo $APT autoremove`                                                   | Remove automatically installed packages no longer needed                                          |
| aguu    | `sudo $APT update && sudo $APT upgrade`                                  | Update packages list and upgrade available packages                                               |
| allpkgs | `dpkg --get-selections \| grep -v deinstall`                             | Print all installed packages                                                                      |
| kclean  | `sudo aptitude remove -P ?and(~i~nlinux-(ima\|hea) ?not(~n$(uname -r)))` |Remove ALL kernel images and headers EXCEPT the one in use                                         |
| mydeb   | `time dpkg-buildpackage -rfakeroot -us -uc`                              | Create a basic .deb package                                                                       |
| ppap    | `sudo ppa-purge <ppa>`                                                   | Remove the specified PPA                                                                          |
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8


## Functions

| Function          | Usage                                 |Description                                                               |
|-------------------|---------------------------------------|--------------------------------------------------------------------------|
| aar               | `aar ppa:xxxxxx/xxxxxx [packagename]` | apt-add-repository with automatic install/upgrade of the desired package |
| apt-history       | `apt-history <action>`                | Prints the Apt history of the specified action                           |
| apt-list-packages | `apt-list-packages`                   | List packages by size                                                    |
<<<<<<< HEAD
| kerndeb           | `kerndeb`                             | Kernel-package building shortcut                                         | 


=======
| kerndeb           | `kerndeb`                             | Kernel-package building shortcut                                         |

## Authors:

- [@AlexBio](https://github.com/AlexBio)
- [@dbb](https://github.com/dbb)
- [@Mappleconfusers](https://github.com/Mappleconfusers)
- [@trinaldi](https://github.com/trinaldi)
- [Nicolas Jonas](https://nextgenthemes.com)
- [@loctauxphilippe](https://github.com/loctauxphilippe)
- [@HaraldNordgren](https://github.com/HaraldNordgren)
>>>>>>> 3848102a5ec8534cef935d594c6abcbfc0f419c8
