# dotfiles
### Tracking Method
This uses a bare git repository and an alias for `git` (specifically for the dotfiles).
```
$ git init --bare ~/.dotfiles  
$ alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'  
$ config config status.showUntrackedFiles no  
```
Of course, you could (and probably should) just set the alias in `.bashrc` or whatever your shell config file is.
```
$ echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```
From here on out, it's just plain old git (using the `config` alias). 
```
config status
config add {file you want to add}
config commit -m {message}
```
...and so on.

### Why? 
This method is simple, doesn't mess with symlinks, and only needs `git` as a prerequisite!  
You can also use multiple branches for machine-specific configurations, with the master branch storing all the shared configuration files.

### More Info
- https://wiki.archlinux.org/index.php/Dotfiles
- https://www.atlassian.com/git/tutorials/dotfiles
