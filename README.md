# nvim

## Introduction

My personal Neovim configuration.

## Installation

### Prerequisites

<details>

#### Install Neovim

[Link to my Neovim version](https://github.com/neovim/neovim/releases/tag/v0.10.2)

Plugins may require a newer version of neovim as they update.

#### Install Dependencies

- Basic utils: `git`, `unzip`, C Compiler in path(`gcc, clang, cl, etc.`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- [fd](https://github.com/sharkdp/fd)
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
- [DaddyTimeMono Nerd Font](https://www.nerdfonts.com/font-downloads)

</details>

### Clone My Config

<summary> Linux and Mac </summary>

```sh
git clone https://github.com/jsvolta/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

<summary> Windows </summary>

If you're using `cmd.exe`:

```
git clone https://github.com/jsvolta/nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`

```
git clone https://github.com/jsvolta/nvim.git "${env:LOCALAPPDATA}\nvim"
```

### Post Installation

Start Neovim

```sh
nvim
```

Lazy will install all the plugins I have. Use `:Lazy` to view
current plugin status. Hit `q` to close the window.
