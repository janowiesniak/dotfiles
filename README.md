# Clone Repository

```
$ mkdir $HOME/Code && cd $HOME/Code && git clone git@github.com:JanOwiesniak/dotfiles.git
```

# Update Git Submodules

```
$ cd $HOME/Code/dotfiles && git submodule init && git submodule update`
```

# Install [stow](http://www.gnu.org/software/stow/manual/stow.html)

## UNIX

```
$ apt-get install stow
```

## MAC OS

```
$ brew install stow
```

# Create Symlinks

```
$ ./install.sh
```
