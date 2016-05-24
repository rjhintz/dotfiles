# General Config Files

## Setup

Need symbolic links

`ln -s target_path link_path`

`ln -s <from> <to>`

-----------

```
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/profile ~/.profile
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.vimrc
```

-------------
### Experiments

#### Fails

Change CAPS LOCK to Esc

Instead of below, use Tweak Tool (aka Gnome Tweak Tool). See `Typing` tab. Removed file `xmodmaprc` and symlinks

`ln -s ~/dotfiles/xmodmaprc ~/.xmodmaprc` <==doesn't seem to work (anymore)

`ln -s ~/dotfiles/xmodmaprc ~/.xmodmap`  <==never worked
