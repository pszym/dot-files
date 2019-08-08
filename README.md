### TODO
    * source ~.<file>.local files from ~/dotfiles/.<file>
    * turn into an install script

### Install
Install pathogen
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Install vim solarized
```
cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
```

Rename local files (if exisit)
```
mv ~/.bashrc ~/.bashrc.local
mv ~/.virmrc ~/.vimrc.local
mv ~/.pdbrc ~/.pdbrc.local
mv ~/.tmux.conf ~/.tmux.conf.local
mv ~/.gitconfig ~/.gitconfig.local
mv ~/.gitignore ~/.gitignore.local
```

Create symlinks
```
ln -s ~/dotfiles/.pdbrc ~/.pdbrc
ln -s ~/dotfiles/.tmux ~/.tmux
ln -s ~/dotfiles/.vim ~/.vim
```

Create directories
```
mkdir ~/.swp
mkdir ~/.backups
```

Create ~/.vimrc with
```
so ~/dotfiles/.vimrc
```


Create ~/.tmux.confg
```
source-file ~/dotfiles/.tmux.conf
```
