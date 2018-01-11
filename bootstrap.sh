files=".vimrc .zshrc"
dir=~/dotfiles
echo "Creating symlinks for dotfiles"

for file in $files; do
  echo "Processing: $file"
  ln -s $dir/$file ~/$file 
done
