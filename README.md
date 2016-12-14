
========

Esta es mi configuración de Neovim

# Instalación
-----------
## Configuración de Parametros

### Neovim

```sh
sudo apt-get -f install libtool libtool-bin autoconf automake cmake g++ pkg-config unzip libmsgpack-dev libuv-dev libluajit-5.1-dev

git clone https://github.com/neovim/neovim.git

cd neovim
make
sudo make install

sudo ln -s ~/.vim $XDG_CONFIG_HOME/nvim
sudo ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
```

### PluginManager para NeoVim

```sh
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim
:PlugInstall
```

### Tmux

```sh
sudo apt-get -f tmux
```

### Personalización

```sh
git clone https://github.com/kristijanhusak/neovim-config.git ~/neovim-config
cd ~/neovim-config
chmod +x ./install.sh
./install.sh
```

### Instalación Plugins

Instalación de python3 para deoplete plugin autocomplete
```sh
sudo apt-get install python3-setuptools
sudo apt-get install python3-pip
sudo pip install neovim
sudo pip3 install neovim
```

Instalación de plugins para neovim
```sh
nvim
:PlugInstall
:UpdateRemotePlugins
```

Acutalización de configuración neovim
```sh
nvim
:so %
```

## Plugins
----------------

* [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
* [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)
* [benekastah/neomake](https://github.com/benekastah/neomake)
* [nelstrom/vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search)
* [mileszs/ack.vim](https://github.com/mileszs/ack.vim)
* [ctrlpvim/ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
* [Raimondi/delimitMate](https://github.com/Raimondi/delimitMate)
* [mattn/emmet-vim](https://github.com/mattn/emmet-vim)
* [tpope/vim-commentary](https://github.com/tpope/vim-commentary)
* [tpope/vim-surround](https://github.com/tpope/vim-surround)
* [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
* [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
* [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [duff/vim-bufonly](https://github.com/duff/vim-bufonly)
* [gregsexton/MatchTag](https://github.com/gregsexton/MatchTag)
* [kristijanhusak/vim-hybrid-material](https://github.com/kristijanhusak/vim-hybrid-material)
* [Shougo/deoplete.nvim](https://github.com/Shougo/deoplete.nvim)
* [Shougo/neosnippet](https://github.com/Shougo/neosnippet)
* [honza/vim-snippets](https://github.com/honza/vim-snippets)
* [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)
* [benjie/neomake-local-eslint.vim](https://github.com/benjie/neomake-local-eslint.vim)
* [dkprice/vim-easygrep](https://github.com/dkprice/vim-easygrep)
* [tpope/vim-obsession](https://github.com/tpope/vim-obsession)

## License
-------

This project is licensed under MIT License (see LICENSE file for details). But
each plugin has its own license, so check each one to see what you can do.
