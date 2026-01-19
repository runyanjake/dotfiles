# Alacritty
A terminal that can handle a nerd font. Used alongside lazyvim.

## MacOS
1. Download a release from `https://github.com/alacritty/alacritty/releases` or get it using Homebrew
```bash
brew install --cask alacritty
```
2. Install a nerd font. This is just some one suggested online.
```bash
brew install font-meslo-lg-nerd-font
```
3. Create an Alacritty config folder and link the alacritty config in this repo into there.
```bash
mkdir -p ~/.config/alacritty
ln -sfn /path/to/dotfiles/lazyvim/alacritty-macos.toml ~/.config/alacritty/alacritty.toml
```

## Ubuntu
1. Install Alacritty through a third-party PPA.
```bash
sudo add-apt-repository ppa:aslatter/ppa
sudo apt update
sudo apt install alacritty
```
2. Install a nerd font (I am using "MesloLG Nerd Font" from  `https://www.nerdfonts.com/font-downloads`)
```bash
unzip Meslo.zip -d Meslo
mkdir ~/.local/share/fonts
cp Meslo/*.ttf ~/.local/share/fonts
fc-cache -fv
rm -r Meslo Meslo.zip
```
3. Create an Alacritty config folder and link the alacritty config in this repo into there.
```bash
mkdir -p ~/.config/alacritty
ln -sfn /path/to/dotfiles/alacritty/alacritty-ubuntu.toml ~/.config/alacritty/alacritty.toml
```

## Windows
1. Install [Alacritty](https://alacritty.org/).
2. Install a Nerd Font (
Download nerd font of choice. I am using [MesoLG Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Meslo.zip).
Right click and select "Install".
3. Windows will not follow WSL symlinks, so you have to do it their way:
```windows
mkdir C:\Users\username\AppData\Roaming\alacritty
New-Item -ItemType SymbolicLink -Path "C:\Users\YOURUSER\AppData\Roaming\alacritty\alacritty.toml" -Target "C:\path\to\dotfiles\alacritty\alacritty-windows.toml"
```

