# Install Xcode tools
xcode-select --install 

# symlinks to the repo's dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Pass brew location
brew bundle --file ~/.dotfiles/Brewfile