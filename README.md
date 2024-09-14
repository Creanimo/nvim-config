# Using Neovim in WSL2 Ubuntu

## Pre-Requisites

### Install Brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install gcc
```
### Install Neovim and dependencies

```bash
brew install nvim
brew install luarocks
```

## Dependencies of Neovim Plugins in this config

### Telescope

```bash
brew install ripgrep
```

### Mason

```bash
sudo apt install clangd
```

#### for Python language servers
```bash
sudo apt install python3-pip
sudo apt install python3-venv
```

## Making the clipboard work

In Windows 'C:/Users/{USERNAME}/.wslconfig':

```txt
[wsl2]
guiApplications=true
```

Windows Terminal:

```bash
wsl --shutdown
wsl
```

back in Ubuntu:

```bash
sudo apt install xsel
```

Restart Neovim, it will detect xsel as the Clipboard Manager. WindowsKey + V works better for pasting than Ctrl + V.

## Other steps to set up IDE

### Preparing git to work

Create an ssh key for the WSL machine. This key logs you in for all github operations requiring credentials (e.g. comitting or pulling private repos).

```bash
ssh-keygen
```

Add the content of '~/.ssh/id_rsa.pub' on 'github.com' > 'Settings' > 'SSH and GPG keys'

Before anything can be comitted we need to set up some user info in git.

```bash
git config --global user.email "name@email.com"
git config --global user.name "Firstname Lastname"
```
