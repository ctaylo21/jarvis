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
  <img src="https://i.imgur.com/3TFvjaY.jpg" alt="Jarvis SS"/>
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
    
    <img src="https://media.giphy.com/media/8FGMkL3Mg29Ef3vA8I/giphy.gif"/>

2. **Buffer management** - *NeoVim*

    Manage buffers inside NeoVim and add/delete/search your open files.

    <img src="https://media.giphy.com/media/8OSeY1pXEw370jZaoM/giphy.gif"/>

3. **Project searching** - *NeoVim*

    Quickly search for simple terms or complex regular expressions in your project.

    <img src="https://media.giphy.com/media/1n92fKs0Vs9nS3dhWM/giphy.gif"/>

4. **Asynchronous linting** - *NeoVim*

	Code is linted asynchronously with [ale](https://github.com/w0rp/ale) each time you save with the linter of your choice.

	<img src="https://media.giphy.com/media/4VW2csp5qvwO4ieCqc/giphy.gif" />
	
5. **Session management** - *Tmux*

    Create sessions for each project with a custom layout. Quickly browse, create, and delete sessions. Tmux even keeps sessions alive if the terminal is closed.

6. **Keyword auto-complete** - *NeoVim* and *zsh*

    Neovim - Automatic, asynchronous keyword completion available in the current buffer via [deoplete](https://github.com/Shougo/deoplete.nvim).

    **Supported Languages**
    * Javascript - support provided by [deoplete-ternjs](https://github.com/carlitux/deoplete-ternjs) and [TernJS](http://ternjs.net/).

    <img src="https://media.giphy.com/media/1ynTzQz05GZUCutRS3/giphy.gif"/>

    * Vimscript - support provided by [neco-vim](https://github.com/Shougo/neco-vim)


    zsh - Auto-complete/spellcheck for tools like [git](https://git-scm.com/), [node](https://nodejs.org/en/), [brew](https://brew.sh/), and [more](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins)

7. **Code Snippets** - *NeoVim*

    Commonly used code snippets made available with a few keystrokes to reduce time and effort. Snippets available via auto-complete window removes need to memorize commands.

8. **Improved JS and JSDoc syntax highlighting** - *NeoVim*
9. **Powerful Git integration** - *zsh* & *NeoVim*
10. **Clean, customizable UI** - *zsh* & *NeoVim*
11. **Improved Vim motion** - *NeoVim*
12. **Extensive documentation** - *Neovim*, *zsh*, & *tmux*

    Each configuration file is thoroughly documented to make each setting easy to understand.

## Installation

Neovim is supported across multiple platforms. Some tools used by Jarvis are not, however. For MacOSX, an installation script is included 
that will install several tools for you. For Windows, no installation script is available, but you can manually install everything 
needed for Neovim in a few short steps.

See the [Installation Guide](docs/INSTALL.md) for detailed instructions.

## Commands

See the [Commands Guide](docs/COMMANDS.md) for a list of mappings/shortcuts.

## Optional Tools
This is a collection of cool tools that you might want to use.

[`vtop`](https://github.com/MrRio/vtop) - A nifty graphical activity monitor for the command line.

[`pecan`](https://github.com/zzzeyez/Pecan) - Configurable menu bar for OSX.

## Support

If you find any problems or bugs, please open a new [issue](https://github.com/ctaylo21/jarvis/issues).
