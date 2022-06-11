# dotfiles

- [x] homebrew
- [x] neovim
- [x] tmux
- [ ] lazygit

Hack Regular Nerd Font Complete.ttf
not Mono ending

## [Homebrew](https://brew.sh)

### for ubuntu

[Homebrew-on-Linux](https://docs.brew.sh/Homebrew-on-Linux)

```bash
# requirements
sudo apt-get install build-essential procps curl file git
# install homebrew script
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# environment
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/lecter/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

### for mac

```bash
# install homebrew script
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## [Neovim](https://neovim.io)

### install

[neovim github](https://github.com/neovim/neovim)

```bash
# recommended
brew install neovim
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
# deprecated
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt install -y nodejs
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
sudo ln -s echo $(which nvim) /usr/bin/vim
sudo ln -s echo $(which nvim) /usr/bin/v
```

### 未解决的问题

因为[dashboard-nvim](https://github.com/glepnir/dashboard-nvim)最近在迭代，把版本锁定在稳定版本

```lua
use({ "glepnir/dashboard-nvim", commit = "a36b323" })
```

## tmux

```shell
cp dotfiles/.tmux.conf ~
```
