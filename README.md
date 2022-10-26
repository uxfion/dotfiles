# dotfiles

- [x] homebrew
- [x] neovim
- [x] tmux
- [ ] lazygit

Hack Regular Nerd Font Complete.ttf
not Mono ending

## package manager

### snap for ubuntu

```bash
sudo apt update && sudo apt install -y snapd
```

### [Homebrew](https://brew.sh) for mac and ubuntu

```bash
# for mac
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

[homebrew-on-linux](https://docs.brew.sh/Homebrew-on-Linux)

```bash
# for ubuntu
sudo apt install -y build-essential procps curl file git
# install homebrew script
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# environment
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /home/lecter/.profile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/lecter/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

sudo apt-get install build-essential
brew install gcc
```

## [neovim](https://neovim.io)

### install

[neovim github](https://github.com/neovim/neovim)

```bash
# recommended
brew install neovim
sudo snap install nvim --classic
```

or

```bash
# deprecated
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo dpkg -i ./nvim-linux64.deb
```

### setup

#### [dotfiles](https://github.com/uxfion/dotfiles)

```bash
git clone https://github.com/uxfion/dotfiles.git
rm -rf ~/.config/nvim
cp -r dotfiles/.config/nvim ~/.config
```

#### [packer.nvim](https://github.com/wbthomason/packer.nvim)

*no need to install packer.nvim mannually*

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

#### pynvim

```bash
sudo apt install python3-pip
pip install pynvim
```

#### node.js

node.js

```bash
# recommended
brew install node@16
brew unlink node
brew link --overwrite node@16
```

or

```bash

```

```bash
npm install -g neovim
```

#### clip

```bash
sudo apt install xclip
```

#### softlink

```bash
sudo ln -s $(which nvim) /usr/local/bin/vim
sudo ln -s $(which nvim) /usr/local/bin/v
```

## tmux

```bash
cp -r dotfiles/.config/tmux ~/.config
```

## lazygit

## Q

