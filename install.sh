dirs=("bash" "git" "screen" "vim")
for dir in "${dirs[@]}";
do
  stow -v -t $HOME $dir -d $HOME/Code/dotfiles
done
