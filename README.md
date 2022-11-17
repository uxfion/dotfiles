# dotfiles

- [x] homebrew
- [x] neovim
- [x] coc
- [x] tmux
- [x] z.lua
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
scoop install neovim
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
ln -s ~/dotfiles/.config/nvim ~/.config/nvim

cp -r ~/dotfiles/.config/nvim C:\Users\Lecter\AppData\Local
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
sudo snap install node --classic --channel=16
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
```

```
scoop bucket add versions
scoop install nodejs16
```

```bash
npm install -g neovim
```

#### clip

```bash
sudo apt install xclip
```

#### alias

`vim ~/.bashrc`

```bash
alias v='nvim'
```

```bash
sudo ln -s $(which nvim) /usr/local/bin/vim
sudo ln -s $(which nvim) /usr/local/bin/v
```

## tmux

```bash
ln -s ~/dotfiles/.config/tmux ~/.config/tmux
```

## z.lua

```bash
brew install z.lua
scoop install z.lua
```

```
# bash init
eval "$(lua /home/linuxbrew/.linuxbrew/share/z.lua/z.lua --init bash once enhanced)"

# zsh init
eval "$(lua /opt/homebrew/share/z.lua/z.lua --init zsh once enhanced)"

# 
eval "$(lua /path/to/z.lua  --init posix once enhanced)"  # Posix shell 初始化
```

## lazygit

## Q

