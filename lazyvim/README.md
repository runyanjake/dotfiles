# 💤 LazyVim
My LazyVim config, a sequel to runyanjake/nvim.  
Based off of `https://github.com/LazyVim/starter`.

## Installation

### Configure X11 Forwarding (For clipboard access over SSH)
Confirm on your client, and when ssh'd into remote, that `echo $DISPLAY` returns `:0` or `:1`.

Install dependencies:
```
sudo apt install xauth x11-apps libx11-dev libxkbfile-dev libxtst-dev
```

Edit SSH Daemon config to allow X11 forwarding:
```
sudo vim /etc/ssh/sshd_config

X11Forwarding yes
X11DisplayOffset 10
X11UseLocalhost yes
```

Reminder to connect using -X flag e.g. `ssh -X user@hostname` to make use of our configuration.

Validate while ssh'd to server by seeing if `echo $DISPLAY` returns something along the lines of `localhost:10.0`. Or try `xclock`.

### Install Neovim
Build Neovim from source so that we can ensure clipboard support. 

#### Build Dependencies
This requires the proper packages to be installed _at the time of build_ so install the X11 dependencies above.

Also install these system clipboard tools:
```
sudo apt install xclip xsel
sudo apt install wl-clipboard  # If using wayland, I am not.
```

#### Build Steps
```
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout stable
git clean -fdx  # If we already cloned/built and need to clean old build files.
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

Test that clipboard support is available.
```
nvim
:echo has('clipboard')
```
OR
```
nvim --version | grep clipboard
```
This doesn't work for me but you would see the following:
```
+clipboard
+xterm_clipboard
```

### Misc Dependencies
Sometimes GCC is required for some nvim variants.
```
sudo apt install build-essential
```

### Configuration

4. Link config files to the expected path under `~/.config`.
```
mkdir ~/.config/nvim
ln -sfn /path/to/dotfiles/lazyvim/stylua.toml ~/.config/nvim/stylua.toml
ln -sfn /path/to/dotfiles/lazyvim/lua ~/.config/nvim/lua
ln -sfn /path/to/dotfiles/lazyvim/init.lua ~/.config/nvim/init.lua
ln -sfn /path/to/dotfiles/lazyvim.json ~/.config/nvim/lazyvim.json
```

5. Start nvim, and let all the packages install. Done!

## Reminders
If uninstalling/reinstalling, you need to manually get rid of stuff in `~/.local/share/nvim` before reinstalling everything.

## Dependencies
Some plugins depend on other packages.

Use the `:checkhealth` command in Lazyvim to identify which packages need to be installed on the system.

### Misc Dependencies
1. fdfind
This is used for the nvim-tree (?) search bar in the explorer panel.
```
sudo apt install fd-find
```

## Plugins/Addons/Extras

### Mason (Language Servers)
Enter Mason UI view from nvim: `:Mason`. Enter `g?` to toggle help page if you've forgotten the hotkeys. 

#### Java
I installed this via :LazyExtras. Search for `lang.java`.

This creates or adds to ~/.config/nvim/lazyvim.json. It is one of the config files we are checking into this project, so copy it in with the other config files.

Note that for some projects this will add some project files like what you would see in Eclipse (as JDTLS is related to the project).

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
