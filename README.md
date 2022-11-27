# dotfiles

- [x] homebrew
- [x] neovim
- [x] coc
- [x] copilot
- [x] code formatter
- [x] tmux
- [x] z.lua
- [ ] lazygit

Hack Regular Nerd Font Complete.ttf
not Mono ending

## package manager

### [homebrew](https://brew.sh)

```bash
sudo apt install -y build-essential procps curl file git    # only for ubuntu https://docs.brew.sh/Homebrew-on-Linux

# install homebrew script
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# environment
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /home/lecter/.profile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/lecter/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

sudo apt-get install build-essential    # only for ubuntu
brew install gcc
```

### snap for ubuntu

```bash
sudo apt update && sudo apt install -y snapd
```

## [neovim](https://neovim.io)

### install

[neovim github](https://github.com/neovim/neovim)

#### raw

```bash
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo dpkg -i ./nvim-linux64.deb
```

#### pack

```bash
brew install neovim
sudo snap install nvim --classic
scoop install neovim
```

### setup

#### [dotfiles](https://github.com/uxfion/dotfiles)

```bash
git clone https://github.com/uxfion/dotfiles.git
# linux
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
# windows
cp -r ~/dotfiles/.config/nvim C:\Users\Lecter\AppData\Local
```

#### pynvim

```bash
sudo apt install python3-pip
pip install pynvim
```

#### node.js

##### raw

```bash
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
```

##### pack

```bash
brew install node@16
brew unlink node
brew link --overwrite node@16

sudo snap install node --classic --channel=16

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

#### code formatter

```
brew install stylua
pip install black
npm install -g
```

#### alias

`vim ~/.bashrc`

```bash
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
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
