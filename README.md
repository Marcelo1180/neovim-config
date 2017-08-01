
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

Instalación de python para deoplete plugin autocomplete, NOTA: si estamos en un entorno virtual se debe instalar siempre neovim en el entorno virtual
```sh
source bin/activate
sudo pip install neovim
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

## License
-------

This project is licensed under MIT License (see LICENSE file for details). But
each plugin has its own license, so check each one to see what you can do.
