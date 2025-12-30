# LazyVim
My LazyVim config for Neovim.

## Folder Structure
```
~/.config/nvim
|-- init.lua
|-- lua/
|  |-- config/
|  |  |-- aaa.lua
|  |  |-- bbb.lua
|  |  |-- ccc.lua
|  |  |-- ddd.lua
|  |-- plugins/
|     |-- xxx.lua
|     |-- yyy.lua
|       :
```

## Setup 

### MacOS 
1. Install latest version of Neovim (>10.4). Homebrew should have it.
```bash
brew install neovim
```
2. Create config folder and link files from the repo.
```bash
mkdir ~/.config/nvim 
ln -sfn /path/to/dotfiles/lazyvim/init.lua ~/.config/nvim/init.lua
ln -sfn /path/to/dotfiles/lazyvim/lua ~/.config/nvim/lua
```
3. Go through first time setup.
```bash
nvim 
```

### Ubuntu
1. GCC is required for recent Neovim variants. Get it as part of `build-essential`, a bundle of useful build tools.
```bash
sudo apt install build-essential
```
2. Get latest Neovim from Neovim Launchpad PPA becaues default repos do not have modern Neovim.
```bash
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim
```
3. Ensure the nvim runtimepath includes `~/.config.nvim`.
From in Neovim, execute:
```nvim 
:echo &runtimepath
```
4. Create config folder and link files from the repo.
```bash
mkdir ~/.config/nvim 
ln -sfn /path/to/dotfiles/lazyvim/init.lua ~/.config/nvim/init.lua
ln -sfn /path/to/dotfiles/lazyvim/lua ~/.config/nvim/lua
```
5. Go through first time setup.
```bash
nvim 
```

## Plugins
Plugins live in lua/plugins.
Plugins can either be manually included in init.lua or managed by lazy nvim.  
Each plugin gets its own lua file in there, and lazy or manual edits to init.lua can be used to configure what's enabled.

### bufferline.lua | akinsho/bufferline.nvim
VS Code style top tab manager.
[Repo](https://github.com/akinsho/bufferline.nvim)

Reminders:
- Right click to close. 

### coding.lua | saghen/blink.cmp
Completion plugin for language servers.
[Repo](https://github.com/saghen/blink.cmp)

### snacks.lua | folke/snacks.nvim
Snacks contains a collection of QoL plugins. I am mostly using it for ease around file system search & navigation in nvim.
[Repo](https://github.com/folke/snacks.nvim)

Reminders:
- `LEADER + e` to open neo tree sidebar
- `LEADER + f + g` to open file search via rg (ripgrep)

### theme.lua | folke/tokyonight.nvim
A theme I like for my nvim.
[Repo](https://github.com/folke/tokyonight.nvim)

