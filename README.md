# dotfiles

- [ ] homebrew
- [ ] neovim
- [ ] tmux

## [Homebrew](https://brew.sh)

### for ubuntu

[Homebrew-on-Linux](https://docs.brew.sh/Homebrew-on-Linux)

```
sudo apt-get install build-essential procps curl file git


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/lecter/.profile

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

### for mac



## [Neovim](https://neovim.io)

### install

[neovim github](https://github.com/neovim/neovim)

```
# recommended
brew install neovim
```

or

```
# deprecated
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo dpkg -i ./nvim-linux64.deb
```

### setup

[dotfiles](https://github.com/uxfion/dotfiles)

```
git clone https://github.com/uxfion/dotfiles.git
cp -r dotfiles/.config/nvim ~/.config
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

```
sudo apt install python3-pip
pip install pynvim
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt install -y nodejs
sudo npm install -g neovim
```

```
sudo apt install xclip
```

```
sudo ln -s /usr/bin/nvim /usr/bin/vim
sudo ln -s /usr/bin/nvim /usr/bin/v
```

```
Hack Regular Nerd Font Complete.ttf
not Mono ending
```

## tmux

```
cp dotfiles/.tmux.conf ~
```

