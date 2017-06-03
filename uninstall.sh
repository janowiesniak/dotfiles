dirs=("bash" "git" "screen" "vim")
for dir in "${dirs[@]}";
do
  stow -v --delete -t $HOME $dir -d $HOME/Code/dotfiles
done
