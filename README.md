 <div align="center">
  <!-- PR's Welcome -->
  <a href="http://makeapullrequest.com">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square"
      alt="PR's Welcome" />
  </a>
  <img src="https://img.shields.io/badge/Shell-zsh-yellow.svg" />
  <img src="https://img.shields.io/badge/Editor-neovim-brightgreen.svg" />
</div>

 <h1 align="center">Jarvis</h1>

<div align="center">
  <strong>(Neo)Vim of the Future</strong>
</div>
<div align="center">
  A powerful, minimalist development environment with cutting-edge features
</div>
<br/>

<div align="center">
  <img src="https://i.redditmedia.com/5hM6ZNO1nVaGShnp78BRFuGtXcnDDNftA-7cc6aINFI.png?s=10cc17271fc5823361cb4e238183fc1b" />
</div>

<div align="center">
  <img src="https://i.imgur.com/2rqF24f.png" alt="Jarvis SS"/>
</div>
<br/>

## Table of Contents
- [Features](#features)
- [Installation](#installation)
- [Commands](#commands)
- [Support](#support)

## Features

The following are features provided by Jarvis. They all have quick keybindings to make them quick and easy to use.

1. **Quick-open files** - *zsh* & *NeoVim*

    Open files with simple keystrokes with fuzzy matching via command line and inside NeoVim.

    <img src="https://i.imgur.com/QgtsoRL.gif" height="400px"/>

2. **Buffer management** - *NeoVim*

    Manage buffers inside NeoVim and add/delete/search your open files.

    <img src="https://i.imgur.com/iUlxM8x.gif" height="400px"/>

3. **Project searching** - *NeoVim*

    Quickly search for simple terms or complex regular expressions in your project.

    <img src="https://i.imgur.com/1RPPM78.gif" height="400px"/>

4. **Asynchronous linting** - *NeoVim*

	For Typescript/Javascript development, code is linted asynchronously with [coc-eslint](https://github.com/neoclide/coc-eslint) and automatically formatted via [coc-prettier](https://github.com/neoclide/coc-prettier) on file save to conform to [prettier](https://prettier.io/) standards.

	<img src="https://i.imgur.com/Tnh6e0z.gif" height="400px"/>

5. **Session management** - *Tmux* and *zsh/fzf*

	Create sessions for each project with a custom layout. Quickly browse, create, and delete sessions. Tmux even keeps sessions alive if the terminal is closed. Using `fzf` and `zsh`, you can create or switch to sessions easily, as well as delete session by name or fuzzy-search.

	<img src="https://i.imgur.com/r9rXyeL.gif" height="400px"/>

6. **Keyword auto-complete** - *NeoVim* and *zsh*

    Neovim - Automatic, asynchronous keyword completion available in the current buffer via [coc.nvim](https://github.com/neoclide/coc.nvim). It's powered by the same language server extensions as VSCode. It also supports the new "floating window" feature so you can finally have syntax highlighting in your completion windows! 

    <img src="https://i.imgur.com/AsXMuHA.gif" width="100%"/>

	A variety of languages are supported by coc.nvim. I currently use a pretty standard set for web development that I will continue to tweak as needed.
	  - [Typescript/Javascript](https://github.com/neoclide/coc-tsserver): `:CocInstall coc-tsserver`
	  - [Eslint](https://github.com/neoclide/coc-eslint): `:CocInstall coc-eslint`
	  - [Prettier](https://github.com/neoclide/coc-prettier): `:CocInstall coc-prettier`
	  - [CSS](https://github.com/neoclide/coc-css): `:CocInstall coc-css`
	  - [json](https://github.com/neoclide/coc-json): `:CocInstall coc-json`

7. **Code Snippets** - *NeoVim*

    Commonly used code snippets made available with a few keystrokes to reduce time and effort via [neosnippet](https://github.com/Shougo/neosnippet.vim). Snippets available via auto-complete window removes need to memorize commands. Quickly hop to relevant pieces of snippet as needed.

    <img src="https://i.imgur.com/bz7A7CM.gif" height="400px"/>

8. **Improved Vim motion** - *NeoVim*

	Using [vim-easymotion](https://github.com/easymotion/vim-easymotion), quickly jump to precise locations with minimal keystrokes.

	<img src="https://i.imgur.com/sTRBOa4.gif" height="400px"/>

## Installation

Neovim is supported across multiple platforms. Some tools used by Jarvis are not, however. For MacOSX, an installation script is included
that will install several tools for you. For Windows, no installation script is available, but you can manually install everything
needed for Neovim in a few short steps.

See the [Installation Guide](docs/INSTALL.md) for detailed instructions.

## Commands

See the [Commands Guide](docs/COMMANDS.md) for a list of mappings/shortcuts.

## Optional Tools
This is a collection of cool tools that you might want to use.

[`z`](https://github.com/rupa/z)\* - Tracks most commonly used directories for optimized directory switching

[`vtop`](https://github.com/MrRio/vtop)\* - A nifty graphical activity monitor for the command line

[`taskbook`](https://github.com/klauscfhq/taskbook) - Tasks, boards, & notes for command-line. Think Trello for the terminal.

[`pecan`](https://github.com/zzzeyez/Pecan) - Configurable menu bar for OSX.

[`vim-markdown-composer`](https://github.com/euclio/vim-markdown-composer) - Asynchronous markdown preview plugin for Vim/Neovim.

[`shpotify`](https://github.com/hnarayanan/shpotify) - Control Spotify from the command line (OSX-only)

> **\*** -  Tool is installed automatically if `install.sh` script is used

## Support

If you find any problems or bugs, please open a new [issue](https://github.com/ctaylo21/jarvis/issues).
