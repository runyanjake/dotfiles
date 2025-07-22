# 💤 LazyVim
My LazyVim config, a sequel to runyanjake/nvim.  
Based off of `https://github.com/LazyVim/starter`.

## Installation
0. The OS may not be bundled with GCC which is required for neovim variants. It is part of `build-essential`, a bundle of useful build tools.
```
sudo apt install build-essential
```
1. Install Neovim if not installed.  
Homebrew:
```
brew install neovim
```
Ubuntu (installing newer version of neovim):
```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim
```
2. Back up existing nvim config
```
mv ~/.config/nvim ~/.config/nvim_BAK
```
3. Clone this repo to wherever you're gonna keep it.
```
gh repo clone runyanjake/lazyvim  ~/repositories/lazyvim
```
4. Link all nvim related items to the nvim config folder.
```
mkdir ~/.config/nvim
ln -sfn /path/to/dotfiles/lazyvim/stylua.toml ~/.config/nvim/stylua.toml
ln -sfn /path/to/dotfiles/lazyvim/lua ~/.config/nvim/lua
ln -sfn /path/to/dotfiles/lazyvim/init.lua ~/.config/nvim/init.lua
```
5. Start nvim, and let all the packages install. Done!

## Reinstallation
Sometimes you gotta uninstall and reinstall, here are all the steps in one convenient place:
```
sudo apt remove neovim
sudo rm -r ~/.local/share/nvim/
sudo rm -r ~/.config/nvim
sudo apt install neovim

mkdir ~/.config/nvim
ln -sfn /path/to/dotfiles/lazyvim/stylua.toml ~/.config/nvim/stylua.toml
ln -sfn /path/to/dotfiles/lazyvim/lua ~/.config/nvim/lua
ln -sfn /path/to/dotfiles/lazyvim/init.lua ~/.config/nvim/init.lua
```

## Reminders
If uninstalling, you need to manually get rid of stuff in `~/.local/share/nvim` before reinstalling everything.

## Dependencies
Some plugins depend on other packages.

1. Ripgrep
This is needed because the grep feature (Leader + /) spawns an rg process to do grepping.

Install with:
```
sudo apt-get install ripgrep
```

2. fdfind
This is used for the search bar in the explorer panel.

Install with: 
```
sudo apt install fd-find
```

## Plugins/Addons/Extras

### Mason (Language Servers)
Enter Mason UI view from nvim: `:Mason`. Enter `g?` to toggle help page if you've forgotten the hotkeys. 
Some ideas of what to install:
- `java-language-server`
- `python-lsp-server`

### Clipboard Support
By default LazyVim can't copy things to the clipboard.  
Install vim-gtk3 to support this:
```
sudo apt install vim-gtk3
```
Now, right click > copy will copy to system clipboard.
Alternatively you can copy to the `+` or `*`  register (`"`` + `+` + `y` ) and paste outside.

### Avante
Reference: https://github.com/yetone/avante.nvim/blob/main/lua/avante/config.lua  
Remember that the sidebar is toggleable using `LEADER + a + a`.

## Shortcut Reference
`<LEADER>` key is space key. I don't see a need to change it for me.
