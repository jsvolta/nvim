# nvim

## Introduction

My personal Neovim configuration.

## Installation

### Install Neovim

I currently use Neovim v0.10.2 with LuaJIT 2.1.1713484068.

### Install Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`cl`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- [vscode-langservers-extracted](https://github.com/hrsh7th/vscode-langservers-extracted)

### Clone My Config
<details><summary> Linux and Mac </summary>

```sh
git clone https://github.com/jsvolta/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

</details>

<details><summary> Windows </summary>

If you're using `cmd.exe`:

```
git clone https://github.com/jsvolta/nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`

```
git clone https://github.com/jsvolta/nvim.git "${env:LOCALAPPDATA}\nvim"
```

</details>

### Post Installation

Start Neovim

```sh
nvim
```

Lazy will install all the plugins I have. Use `:Lazy` to view
current plugin status. Hit `q` to close the window.
