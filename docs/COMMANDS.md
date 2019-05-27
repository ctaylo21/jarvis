[Go back to README](../README.md)

## Commands

The following are the custom commands in Jarvis and some of the most useful default ones. Each configuration 
file is carefully documented to make it easy to understand. Many default commands for each tool may not be listed.

### Neovim Commands

> Note: Several of the commands expect you to be in the directory you are working in. Fuzzy finding, for example, won't work as expected unless Neovim's current directory is correct. You can check that via `:pwd` inside of Neovim. 
>
> Either open Neovim from the directory you want to work in, or set the directory once Neovim is open via the `:cd /path/to/directory` command.

| Command      | Mode            | Tool                            | Description                              |
| :----------- | :-------------- | :------------------------------ | :--------------------------------------- |
| `<Space>`    | normal          | NeoVim                          | Page down                                |
| `-`          | normal          | NeoVim                          | Page up                                  |
| `<c>hjkl`    | normal          | NeoVim                          | Switch windows and Tmux panes (left/down/up/right) |
| `<leader>h`  | normal          | NeoVim                          | Find and replace                         |
| `<leader>/`  | normal          | NeoVim                          | Clear highlighted search terms           |
| `<leader>f`  | normal          | NERDTree                        | Find current file in tree hiearchy       |
| `<leader>n`  | normal          | NERDTree                        | Toggle NERDTree window                   |
| `C`          | normal     *NT* | NERDTree                        | Switch NERDTree root to be directory under cursor |
| `;`          | normal          | Denite                          | Browse currently open buffers            |
| `<leader>t`  | normal          | Denite                          | Browse files in current directory        |
| `<leader>g`  | normal          | Denite                          | Search current directory for occurences of term |
| `<leader>j`  | normal          | Denite                          | Search current directory for word under cursor |
| `<c-o>`      | insert          | Denite                          | Switch to normal mode (useful inside *DW*) |
| `d`          | normal     *DW* | Denite                          | Delete item (can delete open buffer inside *DW*) |
| `<c-t>`      | insert/normal     *DW* | Denite                   | Open file in new tab (useful inside *DW*) |
| `<c-v>`      | insert/normal     *DW* | Denite                   | Open file in a vertical split  (useful inside *DW*) |
| `<c-h>`      | insert/normal     *DW* | Denite                   | Open file in a horizontal split  (useful inside *DW*) |
| `<leader>y`  | normal          | vim-better-whitespace           | Remove trailing whitespace in file       |
| `<leader>w`  | normal          | EasyMotion                      | Highlight first letter of file words for quick move |
| `<TAB>`      | insert    *AWV* | Deoplete                        | Moves inside of auto-complete window if it's open |
| `<c-n>`      | normal    *AWV* | Deoplete                        | Moves to next suggested auto-complete term |
| `<c-p>`      | normal    *AWV* | Deoplete                        | Moves to previous suggested auto-complete term |
| `<leader>dj` | normal          | tern\_for\_vim/nvim-typescript  | Jump to definition of word under cursor  |
| `<leader>dr` | normal          | tern\_for\_vim/nvim-typescript  | Show references of word under cursor.    |
| `<leader>dn` | normal          | tern\_for\_vim/nvim-typescript  | Rename word under cursor                 |
| `<leader>dd` | normal          | tern\_for\_vim/nvim-typescript  | Look up documentation of word under cursor |
| `<c-k>`      | insert    *AWV* | NeoSnippet                      | Activates first valid snippet that matches |
| `<c-k>`      | insert     *SP* | NeoSnippet                      | Move to next available field of snippet  |
| `<c-k>`      | select     *SP* | NeoSnippet                      | Move to next available field of snippet  |

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

| Command                | Description                        |
| :--------------------- | :------------------------------    |
| `new -s test`          | Create new session named "test"    |
| `kill-session -t test` | Delete session named "test"        |
| `kill-session -a`      | Kill all sessions but current one  |

### Zsh Commands
All the following commands can be run from the command line. Each command can be run by typing command and pressent `<enter>`. Some commands have optional parameters.

| Command                | Description                        |
| :--------------------- | :------------------------------    |
| `fo`                   | Fuzzy-find file in current directory and open with Neovim               |
| `fh`                   | Fuzzy-find in command history                                           |
| `fgb <*branch_name>`.  | Git checkout local/remote branch by name or fuzzy-find                  |
| `ftm <*session_name>`  | Switch to session name if given, create if doesn't exist or fuzzy-find  |
| `ftmk <*session_name>` | Kill given session or fuzzy-find session to kill                        |

<br />

* `*`  - Indicates optional param

### Tern Configuration

[TernJS](http://ternjs.net) can be used within Neovim to enable auto-complete, method documentation, function argument hints, jump to definition, and more for javascript. See the `tern-for-vim` commands in the [Neovim Commands](#neovim-commands) section above for how to use tern within Neovim.

Here is an example `.tern-project` file that should be placed at the root of your ES6 project:

```
{
 "loadEagerly": [
    "src/index.js" // your main entry point file
  ],
  "plugins": {
    "doc_comment": {
      "fullDocs": true
    },
    "modules": {},
    "node_resolve": {},
    "es_modules": {}
  },
  "libs": [
    "browser"
  ]
}
```
If you want to add more libraries, or use a different module system than `es_modules`, please see the documentation on the [tern website](http://ternjs.net/doc/manual.html).	
