# .config
myconfig files

[from ](https://www.youtube.com/watch?v=8W06wMNZmo8&t=52s)

https://github.com/josean-dev/dev-environment-files#sketchybar-custom-menu-bar-setup

---

## Ubuntu nvim
```
sudo apt update
sudo apt install build-essential cmake unzip curl ripgrep fd-find -y
```

- fd
```
mkdir -p ~/.local/bin
ln -s $(which fdfind) ~/.local/bin/fd

# Add ~/.local/bin to your PATH if not already there
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

- Update nvim
```
# Remove old version (if installed via apt)
sudo apt remove neovim -y

# Install dependencies
sudo apt install ninja-build gettext cmake unzip curl build-essential -y

# Clone Neovim source (stable)
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout stable

# Build and install
make CMAKE_BUILD_TYPE=Release
sudo make install

# Verify install
nvim --version
```

## Copilot
use `:Copilot auth
