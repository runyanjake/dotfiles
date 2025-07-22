# Alacritty
A terminal that can handle a nerd font. Used alongside lazyvim.

## MacOS
1. Download a release from `https://github.com/alacritty/alacritty/releases` or get it using Homebrew
```
brew install --cask alacritty
```
2. Install a nerd font. This is just some one suggested online.
```
brew install font-meslo-lg-nerd-font
```
3. Create an Alacritty config folder and link the alacritty config in this repo into there.
```
mkdir -p ~/.config/alacritty
ln -sfn /path/to/dotfiles/lazyvim/alacritty-macos.toml ~/.config/alacritty/alacritty.toml
```

## Ubuntu
1. Install Alacritty through a third-party PPA.
```
sudo add-apt-repository ppa:aslatter/ppa
sudo apt update
sudo apt install alacritty
```
2. Install a nerd font (I am using "MesloLG Nerd Font" from  `https://www.nerdfonts.com/font-downloads`)
```
unzip Meslo.zip -d Meslo
mkdir ~/.local/share/fonts
cp Meslo/*.ttf ~/.local/share/fonts
fc-cache -fv
rm -r Meslo Meslo.zip
```
3. Create an Alacritty config folder and link the alacritty config in this repo into there.
```
mkdir -p ~/.config/alacritty
ln -sfn /path/to/dotfiles/alacritty/alacritty-ubuntu.toml ~/.config/alacritty/alacritty.toml
```
