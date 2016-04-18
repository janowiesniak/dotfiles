# Personal dotfiles

* Clone this repo with `mkdir $HOME/Code && cd $HOME/Code && git clone git@github.com:JanOwiesniak/dotfiles.git`

# Manage dotfile with stow

* Install [stow](http://www.gnu.org/software/stow/manual/stow.html) with `$ apt-get install stow`
* Configure bash: `stow -t $HOME bash -d $HOME/Code/dotfiles`
* Configure vim: `stow -t $HOME vim -d $HOME/Code/dotfiles`
