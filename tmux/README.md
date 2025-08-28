# Tmux
My custom tmux configuration.

## Requirements
tmux >= 3.1

## Installation

1. Clone this repo and link `tmux.conf` to `~/.tmux.conf`. Note it's a hidden file in this default configuration.
```
ln -sfn /path/to/dotfiles/tmux/tmux.conf ~/.tmux.conf
```
2. Clone the TPM repo directly into the config folder.
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
3. Reopen terminal or re-source tmux.
```
tmux source ~/.tmux.conf
```

## Plugins Notes

### TPM
Tmux Package Manager is de facto package manager for tmux.

## General Notes
- When updating `tmux.conf`, styling stays after the directives that set them are removed. This means you might have to `tmux kill-server` in addition to `tmux source ~/.tmux.conf`. 

## Shortcut Reference
My `<PREFIX>` key combo is `C-Space`, changed from standard `C-b`.

### General

`<PREFIX> + `

### Windows
- `<PREFIX> + c`: Create a new window.
- `<PREFIX> + w`: Choose a window from a list (visual selector).
- `<PREFIX> + n`: Move to the next window.
- `<PREFIX> + p`: Move to the previous window.
- `<PREFIX> + l`: Move to the last (previously selected) window.
- `<PREFIX> + 0-9`: Select window 0 through 9.
- `<PREFIX> + ,`: Rename the current window.
```


## References 
- https://hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/
