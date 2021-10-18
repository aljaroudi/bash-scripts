# Source: https://github.com/neovim/neovim/wiki/Building-Neovim

# Install dependencies
brew install ninja libtool automake cmake pkg-config gettext curl

# Clone
git clone https://github.com/neovim/neovim

# Compile
cd neovim && make -j4

# Install
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


