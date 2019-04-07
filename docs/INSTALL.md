[Go back to README](../README.md)

## Installation

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

3. Manually update your iTerm profile to use a new font (*Knack Regular Nerd Font Complete* is added by the installation script) and colorscheme.

4. (Optional) Depending on your autocomplete needs with [coc.nvim](https://github.com/neoclide/coc.nvim), you will want to install the appropriate langague servers. For example, I use the following extensions:
  - [Typescript/Javascript](https://github.com/neoclide/coc-tsserver): `:CocInstall coc-tsserver`
  - [Eslint](https://github.com/neoclide/coc-eslint): `:CocInstall coc-eslint`
  - [Prettier](https://github.com/neoclide/coc-prettier): `:CocInstall coc-prettier`
  - [CSS](https://github.com/neoclide/coc-css): `:CocInstall coc-css`
  - [json](https://github.com/neoclide/coc-json): `:CocInstall coc-json`

5. (Optional) Install [Pecan](https://github.com/zzzeyez/Pecan) for customizable OSX header. Follow install instructions on page. For Oceanic theme, copy `jarvis/config/Pecan/style.css` into `~/Library/Application Support/Übersicht/widgets/Pecan/style.css` and refresh widget by using `Übersicht` -> `Refresh All Widgets` from native OSX menu bar.


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
4. Set python installation location `let g:python3_host_prog = 'Path\To\Python\Python37\python.exe'`

#### Step 3: Configure Neovim for Windows

*Note:* Cloning this repo probably isn't necessary. You only need to grab the `config/nvim/init.vim` and `config/nvim/plugins.vim` files from this repo and put them in the correct locations on your computer.

1. Copy `config\nvim\init.vim` to `~\AppData\Local\nvim\init.vim ` on your computer.
2. Copy `jarvis\config\nvim\init.vim` to `~\AppData\Local\nvim\plugins.vim` on your computer.
3. Open `~\AppData\Local\nvim\init.vim` and replace every instance of `~/.config/nvim/` with `~\AppData\Local\nvim\`
4. Open Neovim (`C:\tools\neovim\Neovim\bin\nvim-qt.exe`) and run `:PlugInstall` and `:UpdateRemotePlugins`. You might need to close and re-open Neovim.
5. Install the vim linter [vint](https://github.com/Kuniwak/vint) with `pip install vim-vint`
6. Install ripgrep for windows (may need to run as admin) `choco intall ripgrep`
7. Copy custom vim airline theme: `config\nvim\space.vim\` to `~\AppData\Local\nvim\plugged\vim-airline-themes\autoload\airline\themes\space.vim`

## Additional Manual Configuration

The following configurations require manual changes outside of Jarvis.

### Iterm Setup

These are the steps to configure your iTerm setup. Typically, I work in full-screen mode with multiple tmux sessions and panes. This keeps things very distraction-free and maximizes screen space.

#### Automatically Load Settings

**Warning**: The automatic loading of settings is untested. The settings were just exported from my current setup.

In iTerm, do the following:

1. Load settings from folder: `Preferences` -> `General` -> `Preferences` -> `Load preferences from a custom folder or URL` and choose `<your-jarvis-directory>/iterm`

#### Manually Update Settings

If automatically loading settings didn't work, the key pieces to manually configure are:

1. Setting your font: `Prefereneces` -> `Profiles` -> `Text` -> `Font` -> `Change Font`
2. Set Native Windows: `Preferences` -> `General` -> `Window` -> `Native Full Screen Windows`
3. Hide menu bar in full screen: `Preferences` -> `Appearances` -> `System` -> `Auto-hide menu bar in non-native fullscreen`
4. Hide scrollbars: `Preferences` -> `Appearances` -> `Window` -> `Hide scrollbars`
5. Uncheck "Show border around window": `Preferences` -> `Appearance` -> `Window` -> `Show border around window`
6. (Optional) Make iterm default to full-screen windows: `Preferences` -> `Profiles` -> `Window` -> `Settings for New Windows` -> `Style: Fullscreen`

### Mapping Caps Lock to Escape

In order to keep your fingers near the home row, mapping caps lock to escape to get out of different vim modes can be extremely helpful. This is especially useful for laptops that made the escape key "virutal" (*I'm looking at you, Apple*).

**MacOSX**

This can be done on MacOS by following these simple steps: http://vim.wikia.com/wiki/Map_caps_lock_to_escape_in_macOS

**Windows**

Install and use the free tool [SharpKeys](https://github.com/randyrants/sharpkeys) to easily remap caps lock to escape on Windows.
