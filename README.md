# dotfiles

四大件

tmux
neovim
ranger
lazygit

- [x] homebrew
- [x] neovim
- [x] coc
- [x] copilot
- [x] code formatter
- [x] tmux
- [x] ranger
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
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
```

##### pack

```bash
brew install node@18
brew unlink node
brew link --overwrite node@18

sudo snap install node --classic --channel=18

scoop bucket add versions
scoop install nodejs18
```

```bash
npm install -g neovim
```

#### clip

```bash
sudo apt install xclip
```

#### find

```
brew install ripgrep
brew install fd
```

#### code formatter

```
brew install stylua
pip install black
npm install -g prettier
```

#### im-select

```
brew tap daipeihust/tap && brew install im-select
```

#### sniprun

```bash
brew install rustup
```

#### alias

`vim ~/.bashrc`

```bash
# neovim
export EDITOR='nvim'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
```

## tmux

```bash
ln -s ~/dotfiles/.config/tmux ~/.config/tmux
```

`vim ~/.zshrc`

```
# tmux
alias tl='tmux ls'
alias tn='tmux new -s'
alias ta='tmux attach -t'
```

## ranger

```
brew install ranger
ln -s ~/dotfiles/.config/ranger ~/.config/ranger
cd ~/dotfiles && git submodule update --init
```

`vim ~/.zshrc`

```bash
# ranger
export RANGER_LOAD_DEFAULT_RC=FALSE
export RANGER_ZLUA="/opt/homebrew/share/z.lua/z.lua"
function ranger {
    local IFS=$'\t\n'
    local tempfile="$(mktemp -t tmp.XXXXXX)"
    local ranger_cmd=(
        command
        ranger
        --cmd="map Q chain shell echo %d > "$tempfile"; quitall"
    )
    ${ranger_cmd[@]} "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
        cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}
# alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias r='ranger'
alias ra='ranger'
```

### ranger plugin

- rclone copy
- rclone move

## z.lua

```bash
brew install z.lua
scoop install z.lua
```

```bash
# bash init
eval "$(lua /home/linuxbrew/.linuxbrew/share/z.lua/z.lua --init bash once enhanced)"

# zsh init
eval "$(lua /opt/homebrew/share/z.lua/z.lua --init zsh once enhanced)"

# powershell init
Invoke-Expression (& { (lua "D:\Applications\Scoop\apps\z.lua\current\z.lua" --init powershell enhanced once) -join "`n" })
```

## lazygit

## Q
