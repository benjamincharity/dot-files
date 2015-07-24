# Set directory for cask installs
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

echo "Brewing common apps..."
brew install ack autojump automake curl git git-flow imagemagick libmemcached memcached openssl tmux wget node
echo "Finished installing: ack autojump automake curl git git-flow imagemagick libmemcached memcached openssl tmux wget node"

echo "Setting up Shell"
echo "Cloning Oh My Zsh..."
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "Cloning dot-files..."
git clone git@github.com:benjamincharity/dot-files.git ~/.dot-files

echo "Creating links..."
echo "Link .zshrc"
ln -s ~/.dot-files/zshrc ~/.zshrc

echo "Link .vim"
[[ -L ~/.vim ]] || ln -s ~/.dot-files/vim ~/.vim

echo "Link .vimrc"
ln -s ~/.dot-files/vim/vimrc ~/.vimrc

echo "Link .gvimrc"
ln -s ~/.dot-files/vim/gvimrc ~/.gvimrc

echo "Link .gitconfig"
ln -s ~/.dot-files/gitconfig ~/.gitconfig

echo "Link .git_template"
ln -s ~/.dot-files/.git_template ~/.git_template

echo "Link .jscsrc"
ln -s ~/.dot-files/jscsrc ~/.jscsrc

echo "Create swap files dir"
mkdir ~/.dot-files/vim/swap_files

echo "Setting up vim/vundler..."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# Auto install isn't working currently...
#vim +PluginInstall +qall

echo "Changing Shells..."
chsh -s /bin/zsh

echo "\n\n Setup is complete"
zsh
source ~/.zshrc

echo "\n\n You may need to restart your terminal for changes to take effect."

echo "Creating 'code' directory..."
mkdir ~/code

echo "Cloning repos..."
git clone git@github.com:benjamincharity/blog.benjamincharity.com.git ~/code/blog.benjamincharity.com
git clone git@github.com:benjamincharity/ArborWoodProducts.git ~/code/ArborWoodProducts

echo "Creating 'open-source' directory..."
mkdir ~/code/open-source

echo "Cloning repos open source repos..."
git clone git@github.com:benjamincharity/project-boilerplate.git ~/code/open-source/project-boilerplate
git clone git@github.com:benjamincharity/CSS-Guidelines.git ~/code/open-source/CSS-Guidelines
git clone git@github.com:benjamincharity/resets.git ~/code/open-source/resets
git clone git@github.com:benjamincharity/stylish-themes.git ~/code/open-source/stylish-themes
git clone git@github.com:benjamincharity/book.git ~/code/open-source/book
git clone git@github.com:benjamincharity/faviconfinder.com.git ~/code/open-source/faviconfinder.com
git clone git@github.com:benjamincharity/iePayback.git ~/code/open-source/iePayback
git clone git://github.com/powerline/fonts.git ~/code/open-source/powerline-fonts

echo "Installing Powerline fonts..."
cd ~/code/open-source/powerline-fonts && ./install.sh

echo "Cloning MacVim..."
git clone git://github.com/b4winckler/macvim.git ~/code/open-source/macvim
