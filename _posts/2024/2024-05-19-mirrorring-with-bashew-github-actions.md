---
title: Mirroring a website with Bashew and GitHub Actions
layout: post
image: https://github.com/pforret/glennr-unifi/raw/main/assets/logo.jpg
permalink: /2024/05/19/unifi-mirror-bashew-github/
categories:
    - bashew
tags:
    - bash
    - unifi
    - wifi
    - github
---

> TL;DR: I decided to [mirror the installation scripts for Unifi network controllers](https://github.com/pforret/glennr-unifi) on GitHub using Bashew and GitHub Actions. Skip to the <a href="#here">`here` marker</a> to see the steps.


I recently upgraded my Ubiquiti Wi-Fi installation to the Cloud Key Gen 2. The old Cloud Key 1 was obsolete, and I was no longer able to manage the settings of my home Wi-Fi network. I had thought the upgrade would be straightforward, but the Cloud Key ships without a power supply, and doesn't accept just any USB power. It needs to be QuickCharge compatible. The first one I ordered was high power (2A) but I found out that's not the same as QuickCharge.

> Quick Charge is a proprietary technology that can charge battery-powered devices, primarily mobile phones, at power levels exceeding the 7.5 watts (5 volts at 1.5 amps) supported by the USB BC 1.2 standard, using existing USB cables. (...) Quick Charge requires both the power supply and the device being charged to support it, otherwise charging falls back to the standard USB ten watts.
> &bull; via [Wikipedia](https://en.wikipedia.org/wiki/Quick_Charge)

Since I had to wait for the second power supply to arrive, I investigated what other ways there would be to manage my Unifi network. There are some hosted controllers SaaS options: 

* [Ubiquiti](https://eu.store.ui.com/eu/en/collections/unifi-accessory-tech-hosting-and-gateways-cloud/products/unifi-hosting): > 29&euro;/mon 
* [Hostify](https://www.hostifi.com/#pricing): > 99$/mon
* [Unihosting](https://www.unihosted.com/#pricing): free for 1 site and <= 5 devices). 

But I had already purchased the Cloud Key Gen 2, and I didn't want to pay a monthly fee.
Then I considered using a Raspberry Pi to create a controller, the pure DIY route. I had a Raspberry Pi 3B+ lying around, and I could use it to run the controller software. 

It struck me how amateuristic the [DIY part of the Ubiquiti Unifi ecosystem](https://community.ui.com/questions/UniFi-Installation-Scripts-or-UniFi-Easy-Update-Script-or-UniFi-Lets-Encrypt-or-UniFi-Easy-Encrypt-/ccbc7530-dd61-40a7-82ec-22b17f027776) was. There are installation scripts available, but they are not maintained by Ubiquiti. They are developed by Glenn Rietveld (from the Netherlands, I think he's a Ubiquiti employee), and it's not hosted on GitHub, but on his personal website [glennr.nl](https://glennr.nl/scripts). No versioning, no deltas, no history.

I thought that was odd, and I decided to mirror the scripts on GitHub, for science and to check how fast I could do it with a [bashew](https://github.com/pforret/bashew) bash script.

##  <a name="here" href="https://github.com/pforret/glennr-unifi">Creating a mirroring script: pforret/glennr-unifi</a>

[![](https://github.com/pforret/glennr-unifi/raw/main/assets/logo.jpg)](https://github.com/pforret/glennr-unifi)

### 1. create the script template

I start by creating a new script with `bashew script`:

```
⏳  1. first we need the information of the author
Author full name         (pforret) > Peter Forret
Author email             (peter@forret.com) > peter@forret.com
Author (github) username (pforret) > 
⏳  2. now we need the path and name of this new script/repo
Script name (./edifies_endorse.sh) > glennr-unifi.sh
⏳  3. give some description of what the script should do
Script description (This is my script glennr-unifi) > sync all scripts from glennr.nl
⏳  Creating script glennr-unifi.sh ...
glennr-unifi.sh
```

Just like that, the script already has the following functionality:

```
Program : glennr-unifi.sh  by peter@forret.com
Version : v0.0.1 (May 19 15:12:54 2024)
Purpose : sync all scripts from glennr.nl
Usage   : glennr-unifi.sh [-h] [-Q] [-V] [-f] [-L <LOG_DIR>] [-T <TMP_DIR>] <action> <input?>
Flags, options and parameters:
-h|--help        : [flag] show usage [default: off]
-Q|--QUIET       : [flag] no output [default: off]
-V|--VERBOSE     : [flag] also show debug messages [default: off]
-f|--FORCE       : [flag] do not ask for confirmation (always yes) [default: off]
-L|--LOG_DIR <?> : [option] folder for log files   [default: /Users/pforret/log/glennr-unifi]
-T|--TMP_DIR <?> : [option] folder for temp files  [default: /tmp/glennr-unifi]
<action>         : [choice] action to perform  [options: action1,action2,check,env,update]
<input>          : [parameter] input file/text (optional)
```
Now I open the script for editing (I use PHPStorm) and

* I replace all occurrences of 'action1' with 'get'
* remove all mentions of action2, since I won't need them
* also remove the &lt;input&gt; parameter, since I don't need it

This gives me the usage I expected:
```bash
Usage   : glennr-unifi.sh [-h] [-Q] [-V] [-F] [-L <LOG_DIR>] [-T <TMP_DIR>] <action>
Flags, options and parameters:
(...)
<action>         : [choice] action to perform  [options: get,check,env,update]

### TIPS & EXAMPLES
* use glennr-unifi get to get all Unifi scripts from glennr.nl
  glennr-unifi get
```

### 2. add the code to download the scripts

There is one page per type of scripts (controller/ video/ ) with all the links to the .sh files. So I need to process each of those 7 pages and download the files. 
I will use `wget` to _download_ the files (`curl` would have worked too) to stdout, `awk` to perform a combination of _search and parse_ (could have been a `grep | cut` too) and a bash `while read; do` loop to _extract and download_ the URLs from the HTML. 

```bash
function download_from_glennr() {
  Os:require "wget"
  local url="$1"
  local folder="$2"
  local file
  [[ ! -d "$2" ]] && mkdir -p "$2"
  wget "$url" -O - 2>/dev/null |
    awk -F'"' '/get.glennr.nl/ {print $2}' |
    while read -r url; do
      file=$(basename "$url")
      [[ -z "$file" ]] && continue
      IO:progress "Download $file"
      wget -N -q -nd "$url" -P "$folder"
    done
}
# I can then download the pages ones by one like this
download_from_glennr "https://glennr.nl/s/unifi-network-controller" "./scripts/controller"
```
This works like a charm. I can now download all the scripts from the 7 pages with a simple loop.

### 3. add the code to check in updates

If there was an update to any of the scripts, it would overwrite the previous version, and this will be picked up by git. I now need to check for changes and do a `git commit && git push` if there are any. To make things even easier, I want a procedure that can run as a GitHub action that I can trigger on a dail/weekly basis.

Luckily `bashew` [has a built-in function `Gha:finish` for that](https://blog.forret.com/2022/10/15/bashew-github-action/.
  
```bash
if git diff --QUIET --cached; then
  IO:success "No changes!                                "
else
  IO:success "Updating changes ...                       "
  if [[ -z "${RUNNER_OS:-}" ]] ; then
    # not in GitHub Action
    setver auto # uses pforret/setver, which I have installed on all my machines
  else
    # in GitHub action
    Gha:finish # uses internal bashew function
  fi
fi
```

And that's it. I've decided on a daily schedule for now: [![](https://github.com/pforret/glennr-unifi/actions/workflows/daily.yml/badge.svg)](https://github.com/pforret/glennr-unifi/actions/workflows/daily.yml)

```yaml
# .github/workflows/daily.yml
name: Daily Update
on:
  schedule:
    - cron: "15 9 * * *"
  workflow_dispatch:
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Get latest versions from glennr.nl
        run: ./glennr-unifi.sh get
```
