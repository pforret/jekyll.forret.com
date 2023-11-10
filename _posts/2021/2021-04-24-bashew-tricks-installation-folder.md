---
title: Find installation folder for bash scripts
layout: post
image: /wp-content/uploads/2021/04/folder.jpg
permalink: /2021/04/24/installation-folder/
categories:
    - devops
tags:
    - bashew
    - github
    - folder
    - bash
---
> This is the start of a series on some bash tricks and features that I've developed for the [bashew](https://github.com/pforret/bashew) bash scripting micro-framework.

A problem I have spent some time on during the development of bashew, is locating the exact folder where the executing script is running from. 

![](/wp-content/uploads/2021/04/folder.jpg)

```bash
# a script can be called in 3 different ways:
# 1) with an explicit full path
/usr/local/bin/gettext.sh # example
# getting the folder is easy
script_folder="$(dirname "$0")"

# 2) with a explicit relative path
../install/build.sh # example
# getting the folder is a bit more complex
script_folder="$(dirname "$0")"
script_folder="$(cd -P "$script_folder" && pwd)"

# 3) without an explicit path
setver.sh # example
# this means the script can be found in the path
script_path="$(which "$0")"
script_folder="$(dirname "$script_path")"
```

This does however not take into account symlinks (symbolic links), and those are often used for scripts installed with a package manager, like [basher](https://basher.gitparade.com/package/). My scripts typically have nested symlinks after installation by basher. 

`$HOME/.basher/cellar/bin/setver` -> `$HOME/.basher/cellar/packages/pforret/setver/setver` -> `$HOME/.basher/cellar/packages/pforret/setver/setver.sh`

These nested symlinks have to be resolved until the real physical folder has been found, a task best done by a recursive `readlink` function.

This is how bashew does it:

```bash
recursive_readlink() {
    [[ ! -L "$1" ]] && echo "$1" && return 0

    local file_folder
    local link_folder
    local link_name
    local symlink
    
    file_folder="$(dirname "$1")"
    [[ "$file_folder" != /* ]] && 
      link_folder="$(cd -P "$file_folder" &>/dev/null && pwd)"
    symlink=$(readlink "$1")
    link_folder=$(dirname "$symlink")
    link_name=$(basename "$symlink")
    [[ -z "$link_folder" ]] && 
      link_folder="$file_folder"
    [[ "$link_folder" == \.* ]] && 
      link_folder="$(cd -P "$file_folder" && cd -P "$link_folder" &>/dev/null && pwd)"
    recursive_readlink "$link_folder/$link_name"
}

script_install_path="${BASH_SOURCE[0]}"
script_install_path=$(recursive_readlink "$script_install_path")
script_install_folder="$( cd -P "$( dirname "$script_install_path" )" && pwd )"
```
