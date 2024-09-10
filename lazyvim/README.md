# 💤 LazyVim
My LazyVim config, a sequel to runyanjake/nvim.  
Based off of `https://github.com/LazyVim/starter`.

## Installation
1. Install Neovim if not installed.  
Homebrew:
```
brew install neovim
```
1. Back up existing nvim config
```
mv ~/.config/nvim ~/.config/nvim_BAK
```
2. Clone this repo to wherever you're gonna keep it.
```
gh repo clone runyanjake/lazyvim  ~/repositories/lazyvim
```
3. Link all nvim related items to the nvim config folder.
```
ln -sfn /path/to/dotfiles/lazyvim/stylua.toml ~/.config/nvim/stylua.toml
ln -sfn /path/to/dotfiles/lazyvim/lua ~/.config/nvim/lua
ln -sfn /path/to/dotfiles/lazyvim/init.lua ~/.config/nvim/init.lua
```
4. Start nvim, and let all the packages install. Done!

## Plugins/Addons

### Mason (Language Servers)
Enter Mason UI view from nvim: `:Mason`. Enter `g?` to toggle help page if you've forgotten the hotkeys. 
Some ideas of what to install:
- `java-language-server`
- `python-lsp-server`

## Shortcut Reference
`<LEADER>` key is space key. I don't see a need to change it for me.
