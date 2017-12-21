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
- [Features](#features)
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Commands](#commands)
- [Support](#support)

## Features

The following are features provided by Jarvis. They all have quick keybindings to make them quick and easy to use.

1. **Quick-open files** - *zsh* & *NeoVim*

    Open files with simple keystrokes with fuzzy matching via command line and inside NeoVim.

    <img src="https://media.giphy.com/media/xUOxeZpELYRSECCZR6/giphy.gif"/>
    
2. **Buffer management** - *NeoVim*

    Manage buffers inside NeoVim and add/delete/search your open files.
    
    <img src="https://media.giphy.com/media/xT0xejSMJ76K68Nf0c/giphy.gif"/>
    
3. **Project searching** - *NeoVim*

    Quickly search for simple terms or complex regular expressions in your project.
    
    <img src="https://media.giphy.com/media/3oxHQpx3kxuUk2oa40/giphy.gif"/>
    
4. **Asynchronous linting** - *NeoVim*
5. **Session Management** - *Tmux*
6. **Auto-complete** - *zsh* & *NeoVim*
7. **Improved JS and JSDoc syntax highlighting** - *NeoVim*
8. **Powerful Git integration** - *zsh* & *NeoVim*
9. **Clean, customizable UI** - *zsh* & *NeoVim*
10. **Improved Vim motion** - *NeoVim*
11. **Thoroughly documented** - *Neovim*, *zsh*, & *tmux*

    Each configuration file is documented to make each setting easy to understand.

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
    
8. [z](https://github.com/rupa/z) - Tracks your most used directories and lets you quickly hop there with regexes.  

    ```
    brew install z
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

## Commands

The following are some of the custom commands in Jarvis. Each configuration file is carefully documented to make it easy to understand. Some default commands for each tool may not be listed.

### Neovim Commands

| Command      | Mode           | Tool          | Description                                           |
| :---         | :---           | :---          |:---                                                   |
| `<Space>`    | normal         | NeoVim        | Page down                                             |
| `-`          | normal         | NeoVim        | Page up                                               |
| `<leader>h`  | normal         | NeoVim        | Find and replace                                      |
| `<leader>/`  | normal         | NeoVim        | Clear highlighted search terms                        |
| `<leader>f`  | normal         | NERDTree      | Find current file in tree hiearchy                    |
| `<leader>n`  | normal         | NERDTree      | Toggle NERDTree window                                |
| `;`          | normal         | Denite        | Browser currently open buffers                        |
| `<leader>t`  | normal         | Denite        | Browser files in current directory                    |
| `<leader>g`  | normal         | Denite        | Search current directory for occurences of term       |
| `<c-o>`      | insert         | Denite        | Switch to normal mode (useful inside *DW*)            |
| `<leader>d`  | normal     *DW*| Denite        | Delete item (can delete open buffer inside *DW*)      |
| `<leader>y`  | normal         | vim-better-whitespace        | Remove trailing whitespace in file     |
| `<leader>w`  | normal         | EasyMotion    | Highglight first letter of file words for quick move  |

<br />
*DW* - Within Denite window


## Support

If you find any problems or bugs, please open a new [issue](https://github.com/ctaylo21/jarvis/issues). 