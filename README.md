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
  A powerful development environment with cutting-edge features
</div>
<br/>

<div align="center">
  <img src="https://i.imgur.com/HwQCi5D.jpg" alt="Jarvis SS"/>
</div>

> **Important**: The above UI reflects a work in progress. It requires a combination of settings in iTerm, Neovim, and tmux. It requires some manual tweaking. See the [Manual Configuration section](#manual-configuration) for more details.

## Table of Contents
- [Features](#features)
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Commands](#commands)
- [Manual Configuration](#manual-configuration)
- [Tool Benefits](#tool-benefits)
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
5. **Session management** - *Tmux*

    Create sessions for each project with a custom layout. Quickly browse, create, and delete sessions. Tmux even keeps sessions alive if the terminal is closed.

6. **Keyword auto-complete** - *NeoVim* and *zsh*

    Neovim - Automatic, asynchronous keyword completion available in the current buffer via [deoplete](https://github.com/Shougo/deoplete.nvim).

    **Supported Languages**
    * Javascript - support provided by [deoplete-ternjs](https://github.com/carlitux/deoplete-ternjs) and [TernJS](http://ternjs.net/).

    <img src="https://media.giphy.com/media/1ynTzQz05GZUCutRS3/giphy.gif"/>

    * Vimscript - support provided by [neco-vim](https://github.com/Shougo/neco-vim)


    zsh - Command completion provided by zsh plugins.

7. **Code Snippets** - *NeoVim*

    Commonly used code snippets made available with a few keystrokes to reduce time and effort. Snippets available via auto-complete window removes need to memorize commands.

8. **Improved JS and JSDoc syntax highlighting** - *NeoVim*
9. **Powerful Git integration** - *zsh* & *NeoVim*
10. **Clean, customizable UI** - *zsh* & *NeoVim*
11. **Improved Vim motion** - *NeoVim*
12. **Extensive documentation** - *Neovim*, *zsh*, & *tmux*

    Each configuration file is thoroughly documented to make each setting easy to understand.

## Installation

Neovim is supported across multiple platforms. Some tools used by Jarvis are not, however. For MacOSX, an installation script is included that will install several tools for you. For Windows, no installation script is available, but you can manually install everything needed for Neovim in a few short steps.

### MacOSX

#### Step 1: Installation script

Clone Jarvis into your directory of choice and run the install script. This script will install [Homebrew](https://brew.sh/) (if it needs to) and then install all of Jarvis' dependencies.

**Warning: This will move existing `zsh`, `tmux`, or `nvim` configurations to a backup folder inside of the installation repo.**

```
git clone https://github.com/ctaylo21/jarvis ~/jarvis
cd ~/jarvis
./install.sh
```

#### Step 2: Manually Install Additional Tools

The following tools are the only ones that are (currently) required to be installed manually (if you are using OSX).

1. Install [iTerm2](https://www.iterm2.com/) - Terminal emulator for macOSX.

2. Install [iTerm2 Oceanic Theme](https://github.com/mhartington/oceanic-next-iterm) - Oceanic theme for Iterm. Provides seamless UI experience between Neovim + Tmux.

3. Manually update your iTerm profile to use the new font (*Knack Regular Nerd Font Complete* is added by the installation script) and colorscheme.

4. (Optional) If you are using [TernJS](http://ternjs.net/), the [tern_for_vim](https://github.com/ternjs/tern_for_vim) plugin requires you to manually install node modules inside its install directory.

  ```bash
  cd ~/.config/nvim/plugged/tern_for_vim/
  npm install
  ```


**Installed Tools**

1. [Tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer with session management, customizable terminal layouts, and much more.
2. [NeoVim](https://github.com/neovim/neovim) - A fork of Vim that was created to be a community-driven rewrite of Vim that is focused on cleaning up the codebase and providing a way for developers to contribute to the advancement of the editor. For a list of all the plugins installed for Neovim, see the [plugins file](config/nvim/plugins.vim).
3. [Python 3](https://www.python.org/downloads/)/[Python Neovim Client](https://github.com/neovim/python-client) - Implements support for python plugins in Neovim.
4. [ripgrep](https://github.com/BurntSushi/ripgrep) - A blazingly fast line-oriented search tool that respects .gitignore rules.
5. [fzf](https://github.com/junegunn/fzf#installation) - A general-purpose command-line fuzzy finder that can be used with any list; files, command history, processes, hostnames, bookmarks, git commits, etc.
6. [z](https://github.com/rupa/z) - Tracks your most used directories and lets you quickly hop there with regexes.
7. [nerd font](https://github.com/ryanoasis/nerd-fonts#font-installation) - Custom fonts with glyphs added for icon support within NeoVim.
8. [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) - Installs and loads tmux plugins.

### Windows

These steps currently just detail instructions for getting Neovim working in Windows with Jarvis.

#### Step 1: Install Neovim

Follow the [Windows install instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim#windows) from the Neovim wiki.

#### Step 2: Install Python and Neovim Python Client

1. Install [Python 3](https://www.python.org/downloads/windows/)
2. Ensure the latest version of the [Visual Studio Build Tools](http://landinghub.visualstudio.com/visual-cpp-build-tools) is installed (required by pip)
3. Install the python client for Neovim with `pip3 install --upgrade neovim`

#### Step 3: Configure Neovim for Windows

*Note:* Cloning this repo probably isn't necessary. You only need to grab the `config/nvim/init.vim` and `config/nvim/plugins.vim` files from this repo and put them in the correct locations on your computer.

1. Copy `config/nvim/init.vim` to `~\AppData\Local\nvim\init.vim ` on your computer.
2. Copy `jarvis/config/nvim/init.vim` to `~\AppData\Local\nvim\plugins.vim` on your computer.
3. Open `~\AppData\Local\nvim\init.vim` and replace every instance of `~/.config/nvim/` with `~\AppData\Local\nvim\` 
4. Open Neovim (`C:\tools\neovim\Neovim\bin\nvim-qt.exe`) and run `:PlugInstall` and `:UpdateRemotePlugins`. You might need to close and re-open Neovim.
5. (Optional) Remove the line `Plug 'ryanoasis/vim-devicons'` from `~\AppData\Local\nvim\plugins.vim` and run `:PlugClean` if you can't get a patched font working in Neovim. I had issues getting it working and ended up just using default font. This means icons weren't supported so I remove that plugin.

## Commands

The following are the custom commands in Jarvis and some of the most useful default ones. Each configuration file is carefully documented to make it easy to understand. Many default commands for each tool may not be listed.

### Neovim Commands

> Note: Several of the commands expect you to be in the directory you are working in. Fuzzy finding, for example, won't work as expected unless Neovim's current directory is correct. You can check that via `:pwd` inside of Neovim. 
>
> Either open Neovim from the directory you want to work in, or set the directory once Neovim is open via the `:cd /path/to/directory` command.

| Command      | Mode            | Tool                  | Description                              |
| :----------- | :-------------- | :-------------------- | :--------------------------------------- |
| `<Space>`    | normal          | NeoVim                | Page down                                |
| `-`          | normal          | NeoVim                | Page up                                  |
| `<c>hjkl`    | normal          | NeoVim                | Switch windows and Tmux panes (left/down/up/right) |
| `<leader>h`  | normal          | NeoVim                | Find and replace                         |
| `<leader>/`  | normal          | NeoVim                | Clear highlighted search terms           |
| `<leader>f`  | normal          | NERDTree              | Find current file in tree hiearchy       |
| `<leader>n`  | normal          | NERDTree              | Toggle NERDTree window                   |
| `C`          | normal     *NT* | NERDTree              | Switch NERDTree root to be directory under cursor |
| `;`          | normal          | Denite                | Browse currently open buffers            |
| `<leader>t`  | normal          | Denite                | Browse files in current directory        |
| `<leader>g`  | normal          | Denite                | Search current directory for occurences of term |
| `<leader>j`  | normal          | Denite                | Search current directory for word under cursor |
| `<c-o>`      | insert          | Denite                | Switch to normal mode (useful inside *DW*) |
| `d`          | normal     *DW* | Denite                | Delete item (can delete open buffer inside *DW*) |
| `<leader>y`  | normal          | vim-better-whitespace | Remove trailing whitespace in file       |
| `<leader>w`  | normal          | EasyMotion            | Highlight first letter of file words for quick move |
| `<TAB>`      | insert    *AWV* | Deoplete              | Moves inside of auto-complete window if it's open |
| `<c-n>`      | normal    *AWV* | Deoplete              | Moves to next suggested auto-complete term |
| `<c-p>`      | normal    *AWV* | Deoplete              | Moves to previous suggested auto-complete term |
| `<leader>dj` | normal          | tern\_for\_vim        | Jump to definition of word under cursor  |
| `<leader>dr` | normal          | tern\_for\_vim        | Show references of word under cursor.    |
| `<leader>dn` | normal          | tern\_for\_vim        | Rename word under cursor                 |
| `<leader>dd` | normal          | tern\_for\_vim        | Look up documentation of word under cursor |
| `<c-k>`      | insert    *AWV* | NeoSnippet            | Activates first valid snippet that matches |
| `<TAB>`      | insert     *SP* | NeoSnippet            | Move to next available field of snippet  |
| `<TAB>`      | select     *SP* | NeoSnippet            | Move to next available field of snippet  |

<br />

* *DW*  - Within Denite window
* *NT*  - Within NERDTree window
* *AWV* - With auto-complete window visible
* *AW*  - Inside auto-complete window
* *SP*  - Inside of snippet

### Tmux Commands
Below are some custom key mappings as well as some default tmux commands. Not all tmux commands are included,
just some of the more common ones in my workflow.

#### Prefix Mappings
| Command          | Description                              |
| :--------------- | :--------------------------------------- |
| `<c-a>I`         | Install tmux plugins                     |
| `<c>(h/j/k/l)`.  | Switch Tmux panes and Neovim windows (left/down/up/right) |
| `<c-a>(H/J/K/L)` | Resize Tmux panes based on current pane (left/down/up/right) |
| `<c-a>-`         | Create split horizontally                |
| `<c-a>`&#124;    | Create split vertically                  |
| `<c-a>x`         | Close pane                               |
| `<c-a>$`         | Rename session                           |
| `<c-a>s`         | Browse open sessions - navigate with h/j/k/l and enter to select |
| `<c-a>z`         | Full-screen the current pane             |

#### Tmux Command Line
All of the following command are triggered by `<c-a>:` (Note the colon)

| Command                | Description                     |
| :--------------------- | :------------------------------ |
| `new -s test`          | Create new session named "test" |
| `kill-session -t test` | Delete session named "test"     |

## Manual Configuration

The following configurations require manual changes outside of Jarvis.

### Iterm Setup

These are the steps to configure your iTerm setup. Typically, I work in full-screen mode with multiple tmux sessions and panes. This keeps things very distraction-free and maximizes screen space.

#### Automatically Load Settings

**Warning**: The automatic loading of settings is untested. The settings were just exported from my current setup.

In iTerm, do the following:

1. Load settings from folder: `Preferences` -> `General` -> `Preferences` -> `Load preferences from a custom folder or URL` and choose `<your-jarvis-directory>/iterm`
2. Update the background image to one of your choosing (dark and subtle pattern preferred): `Prefereneces` -> `Profiles` -> `Window` -> `Background Image`

#### Manually Update Settings

If automatically loading settings didn't work, the key pieces to manually configure are:

1. Setting your font: `Prefereneces` -> `Profiles` -> `Text` -> `Font` -> `Change Font`
2. Update the background image to one of your choosing (dark and subtle pattern preferred): `Prefereneces` -> `Profiles` -> `Window` -> `Background Image`

If you use iTerm in full-screen (like me), you can making the following changes to remove all UI clutter around windows:

1. Make iterm default to full-screen windows: `Preferences` -> `Profiles` -> `Window` -> `Settings for New Windows` -> `Style: Fullscreen`
2. Hide scrollbars: `Preferences` -> `Appearance` -> `Window` -> `Hide scrollbars`
3. Uncheck "Show border around window": `Preferences` -> `Appearance` -> `Window` -> `Show border around window`

### Mapping Caps Lock to Escape

In order to keep your fingers near the home row, mapping caps lock to escape to get out of different vim modes can be extremely helpful. This is especially useful for laptops that made the escape key "virutal" (*I'm looking at you, Apple*).

**MacOSX**

This can be done on MacOS by following these simple steps: http://vim.wikia.com/wiki/Map_caps_lock_to_escape_in_macOS

**Windows**

Install and use the free tool [SharpKeys](https://github.com/randyrants/sharpkeys) to easily remap caps lock to escape on Windows.

## Tool Benefits

### Zsh
1. Auto-correct of mistyped commands
2. Auto-complete for tools like [git](https://git-scm.com/), [node](https://nodejs.org/en/), [brew](https://brew.sh/), and [more](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins)

## Support

If you find any problems or bugs, please open a new [issue](https://github.com/ctaylo21/jarvis/issues).
