#/bin/sh
rm -rf ~/.config/nvim ~/.ackrc ~/.tmux.conf ~/.zshrc \
&& curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
&& ln -s $(pwd)/init.vim ~/.config/nvim/init.vim \
&& ln -s $(pwd)/ackrc ~/.ackrc \
&& ln -s $(pwd)/zshrc ~/.zshrc \
&& ln -s $(pwd)/tmux.conf ~/.tmux.conf \
&& ln -s $(pwd)/snippets ~/.config/nvim/snippets \

wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# Instalacion de TMUXIFIER
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
if ! grep -Fxq "export EDITOR='nvim'" ~/.bashrc
then
    echo "export EDITOR='nvim'" >> ~/.bashrc
fi

if ! grep -Fxq 'export PATH="$HOME/.tmuxifier/bin:$PATH"' ~/.bashrc
then
    echo 'export PATH="$HOME/.tmuxifier/bin:$PATH"' >> ~/.bashrc
fi

