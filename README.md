# General Config Files

## Setup

Required symbolic links

`ln -s target_path link_path`

`ln -s <from> <to>`

-----------

```
sudo ln -s ~/dotfiles/gitconfig ~/.gitconfig

sudo ln -s ~/dotfiles/profile ~/.profile  #  <--may not work for AWS

sudo ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

sudo ln -s ~/dotfiles/vimrc ~/.vimrc
```

-------------
### Experiments

#### Fails

Change CAPS LOCK to Esc

Instead of below, use Tweak Tool (aka Gnome Tweak Tool). See `Typing` tab. Removed file `xmodmaprc` and symlinks

`ln -s ~/dotfiles/xmodmaprc ~/.xmodmaprc` <==doesn't seem to work (anymore)

`ln -s ~/dotfiles/xmodmaprc ~/.xmodmap`  <==never worked
