echo "Setting up Shell"
echo "Cloning Oh My Zsh..."
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Cloning dot-files..."
git clone git@github.com:benjamincharity/dot-files.git ~/.dot-files

echo "Creating links..."
echo ".zshrc"
ln -s ~/.dot-files/zshrc ~/.zshrc

echo ".vim"
[[ -L ~/.vim ]] || ln -s ~/.dot-files/vim ~/.vim

echo ".vimrc"
ln -s ~/.dot-files/vim/vimrc ~/.vimrc

echo ".gvimrc"
ln -s ~/.dot-files/vim/gvimrc ~/.gvimrc

echo ".gitconfig"
ln -s ~/.dot-files/gitconfig ~/.gitconfig


echo "Setting up vim/vundler..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +PluginInstall +qall

echo "Changing Shells..."
chsh -s /bin/zsh

echo "\n\n Setup is complete"
zsh
source ~/.zshrc

echo "\n\n You may need to restart your terminal for changes to take effect."
