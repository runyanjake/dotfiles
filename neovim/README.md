# nvim
My nvim configuration for neovim on ubuntu. Sort of superceded by nvim config.

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

## Instructions

### First Time Setup
0. The OS may not be bundled with GCC which is required for neovim variants. It is part of `build-essential`, a bundle of useful build tools.
```
sudo apt install build-essential
```

1. Install the latest version of Neovim from the Neovim Launchpad PPA. Ubuntu apt has an older version, and since then much has changed, so we'll prefer the latest stable from the PPA.
```ubuntu
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim
```

```macos
brew install neovim
```

2. Ensure that the nvim runtimepath is correctly configured to include `~/.config.nvim`.  
You can check that by executing this nvim command: `:echo &runtimepath`. 
3. Both `init.lua` as well as the `lua/` folder and its contents should be symlinked to `~/.config/nvim` (Might need to create the nvim folder if first time).  
```
mkdir ~/.config/nvim
ln -sfn /path/to/dotfiles/neovim/init.lua ~/.config/nvim/init.lua
ln -sfn /path/to/dotfiles/neovim/lua ~/.config/nvim/lua
```
The next time vim is opened, the config changes will apply.

### Configuration
Configuration files live in lua/config.  
The template I am using splits things up logically into a few lua files, that are all included in the top-level init.lua.  

### Plugins
Plugins live in lua/plugins.
Plugins can either be manually included in init.lua or managed by lazy nvim.  
Each plugin gets its own lua file in there, and lazy or manual edits to init.lua can be used to configure what's enabled.

#### coding.lua | saghen/blink.cmp
Completion plugin for language servers.
[Repo](https://github.com/saghen/blink.cmp)

#### snacks.lua | folke/snacks.nvim
Snacks contains a collection of QoL plugins. I am mostly using it for ease around file system search & navigation in nvim.
[Repo](https://github.com/folke/snacks.nvim)

#### theme.lua | folke/tokyonight.nvim
A theme I like for my nvim.
[Repo](https://github.com/folke/tokyonight.nvim)

## References
https://m4xshen.dev/posts/build-your-modern-neovim-config-in-lua (Using their folder structure.)

