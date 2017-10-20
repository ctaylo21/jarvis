# Jarvis
This setup is my current development environment for MacOS. It includes the following tools:

- Vim
- iTerm2
- Tmux
- Oh-my-ZSH

<img src="http://i.imgur.com/QkN0bpN.png" title="vim Screenshot"/></a>
Beautiful, isn't it?

## Dependencies
1. [Homebrew](https://brew.sh/) - Package manager for macOS.

    Install command `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

2. [Iterm2](https://www.iterm2.com/) - Terminal emulator for macOS. Available via the (download page)[https://www.iterm2.com/downloads.html]
3. [Tmux](https://github.com/tmux/tmux/wiki) - Terminal multiplexer.

   Can be installed via homebrew. `brew install tmux`

4. [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) - Open-source framewokr for managing your ZSH configuration

   Intall via curl: `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

5. [Solarized color scheme](http://ethanschoonover.com/solarized/vim-colors-solarized) - Beautiful colorscheme

## Vim Installation
You can install vim by running:

```
brew install vim
```

Now you can use homebrew to upgrade Vim by just running
```
brew update && brew upgrade
```

## Jarvis Installation
To get Jarvis, simply type this into your CLI

`curl -L https://raw.github.com/ctaylo21/jarvis/master/install.sh | sh`

**Warning**: This will move your .vim directory to .vim.bkp.

**This will install a copy of jarvis in you current directory** so be aware of that when you run the above code.
After it backs up the ~/.vim directory it will create a symlink from ~/.vim to where you installed jarvis.

After this script runs you should be ready to go aside from the dependencies listed below. Any custom changes can be put in a file called vimrc.local inside of your jarvis directory. If the file doesn't exists when you run the above script it will copy the vimrc.custom file to vimrc.local so you can get started with a few custom options like font and colorscheme. Feel free to make any changes you want here as they won't be overwritten when you do a git pull.

### Plugins
*Note: (leader) representes your leader key, defaulted to "," in this .vimrc*
1. [Vundle](https://github.com/gmarik/vundle">Vundle) – A fantastic package manager for Vim.
2. [Nerdtree](https://github.com/scrooloose/nerdtree) – A file explorer that lets you set bookmarks and open files in new tabs or splits.

   `(leader)f` - Jumps to current file's location in NerdTree. Useful for browsing in the same folder quickly without navigating through file structure.

3. [Ctrlp](https://github.com/kien/ctrlp.vim) – A full path fuzzy file, buffer, mru, tag, … finder for Vim. Allows you to quickly search your file system or buffer for a file.

   `(leader)b` - Opens CtrlP in buffer search mode (for quickly finding files you have previously opened).  
   `(leader>t` - Opens Ctrlp in file search mode. You can default it to open at a specific location in your .vimrc (like the root of your project, for example).

4. [Syntastic](https://github.com/scrooloose/syntastic) – An awesome syntax checking plugin that works with external syntax checkers and displays syntax errors to you. For certain langauges like javascript there are recommended syntax checkers to install. For exapmple, the setting currently for javascript is to use [JSHint](http://jshint.com/)

   ```
   sudo npm -g install jshint
   ```
5. [Vim-airline](https://github.com/bling/vim-airline) - Highly customizable vim status bar that allows you to display exactly what you want and comes with several awesome color schemes and even integrates with common Vim plugins like Ctrlp.
<a href="https://github.com/bling/vim-airline/wiki/screenshots/demo.gif" target="_blank"><img src="https://github.com/bling/vim-airline/wiki/screenshots/demo.gif" alt="img" style="max-width:100%;"></a>
6. [Bufexplorer](https://github.com/corntrace/bufexplorer) - Easy and quickly switch between buffers(aka files). Quickly switch back and forth between a group of files.

   `(leader)be` - Opens bufexplorer and shows list of recently opened files (in order of MRU by default).

7. [Easy Motion](https://github.com/Lokaltog/vim-easymotion) - Gives you the ability to quickly and precisely hop around a file with Vim motions.

   `(leader)(leader)` is the default mapping to trigger motions. For example, `(leader)(leader)w` will highlight the first letter in each word below the cursor and allow you to select the exact word you want to cursor to hop to.

## Iterm2 and Oh my ZSH
To use Oh my ZSH, the default shell should be changed to Zsh in iTerm2. Open iTerm2 and type run:

```
chsh -s /bin/zsh
```
Copy the `zshrc` file into your home directory `cp zshrc ~/.zshrc` and update it to include your custom paths

## Tmux
Jarvis includes a config file for <a href="http://tmux.sourceforge.net/">tmux</a>, a terminal multiplexer that can significantly improve your productivity and help you organize your workspace. You can find a few good <a href="https://gist.github.com/MohamedAlaa/2961058">cheat sheets</a> to help you get used to the commands. My typical workflow is to have a separate session for each project I'm working on and then have each session split into multiple panes as needed for code/logs/etc.

Having a session per project allows you to arrange the window for each project as you need it and not have to open files from different projects into the same window.

### Depedencies
For Mac OSX you may need to install `reattach-to-user-namespace` to use the tmux configuration. Here's how to install it via homebrew:

```
brew install reattach-to-user-namespace
```

### Instructions
1. Copy `tmux.conf` to the default tmux config file location (`~/.tmux.conf`).

That's it! You can used tmux however you wish and modify the tmux config to suit your needs. The only note is that the default tmux prefix for starting tmux commands - `ctrl+b` - has been switched to be `ctrl+a`.
