# dotfiles

- [x] homebrew
- [x] neovim
- [x] tmux
- [ ] lazygit

Hack Regular Nerd Font Complete.ttf
not Mono ending

## Package Manager

### snap for ubuntu

```bash
sudo apt update
sudo apt install snapd
```

### [Homebrew](https://brew.sh) for mac and ubuntu

```bash
# for mac
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

[Homebrew-on-Linux](https://docs.brew.sh/Homebrew-on-Linux)

```bash
# for ubuntu
sudo apt-get install build-essential procps curl file git
# install homebrew script
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# environment
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/lecter/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

## [Neovim](https://neovim.io)

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

```shell
cp dotfiles/.tmux.conf ~
sudo ln -s $(which tmux) /usr/local/bin/t
```

## lazygit

## Q

- [ ] coc.nvim tab didn't work
