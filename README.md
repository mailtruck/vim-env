# vim-env
Keep my vim in sync on different computers. Install with make

## deps
if you want to install with make you must have make installed

## install

```
make
```

## gotchas 🐲
The install script moves your .vimrc and .vim/ to .vimrc.bak and .vim.bak/

So the first time you run the install script your current .vimrc and .vim/ will be backed up, but the second time, you run it and the symlinks that the install script created on first run will blow away your backups

## TODO
Fix issue in gotchas
