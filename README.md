<div align="center">
  <!-- PR's Welcome -->
  <a href="http://makeapullrequest.com">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square"
      alt="PR's Welcome" />
  </a>
</div>

 <h1 align="center">Jarvis</h1>

<div align="center">
  <strong>(Neo)Vim of the Future</strong>
</div>
<div align="center">
  An old-school editor with cutting-edge features
</div>

## Table of Contents
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Features](#features)
- [Commands](#commmands)
- [Support](#support)

## Dependencies

*Note: Many suggested install commands use [Homebrew](https://brew.sh/). For Windows/linux, the linked github repos and websites provide additional install instructions.*

1. [Homebrew](https://brew.sh/) - Package manager for macOS.

    ```
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```

2. [Iterm2](https://www.iterm2.com/) - Terminal emulator for macOS.

3. [Tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer with session management, customizable terminal layouts, and much more.

   ```
   brew install tmux
   ```

4. [NeoVim](https://github.com/neovim/neovim) - A fork of Vim that was created to be a community-driven rewrite of Vim that is focused on cleaning up the codebase and providing a way for developers to contribute to the advancement of the editor. Many [install options](https://github.com/neovim/neovim/wiki/Installing-Neovim) are available, or you can use:

    ```
    brew install neovim
    ```
    
5. [Python 3](https://www.python.org/downloads/)/[Python Neovim Client](https://github.com/neovim/python-client) - Implements support for python plugins in Neovim.
    
    ```
    brew intall python3
    pip3 install neovim
    ```
6. [ripgrep](https://github.com/BurntSushi/ripgrep) - A blazingly fast line-oriented search tool that respects .gitignore rules.

    ```
    brew install ripgrep
    ```
    
7. [fzf](https://github.com/junegunn/fzf#installation) - A general-purpose command-line fuzzy finder that can be used with any list; files, command history, processes, hostnames, bookmarks, git commits, etc.

    ```
    brew install fzf
    ```

## Installation

Just clone Jarvis into your directory of choice and run the install script.

```
git clone https://github.com/ctaylo21/jarvis ~/jarvis
cd ~/jarvis
./install.sh
```

Now that NeoVim is installed, just install all of its plugins and you should be ready to go.

```
nvim +PlugInstall
```

## Features

### Iterm2

### Tmux

### ZSH 

### Neovim
1. [vim-plug](https://github.com/junegunn/vim-plug) - A minimalist Vim plugin manager with a ton of features. Installed by default with the install script.

## Support

If you find any problems or bugs, please open a new [issue](https://github.com/ctaylo21/jarvis/issues). 