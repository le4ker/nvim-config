# NvMegaChad

![plugins](https://dotfyle.com/le4ker/nvmegachad/badges/plugins)
![leader](https://dotfyle.com/le4ker/nvmegachad/badges/leaderkey)
![lazy](https://dotfyle.com/le4ker/nvmegachad/badges/plugin-manager)

![megaman](.github/img/megaman.jpeg)

[Neovim](https://github.com/neovim/neovim/releases/tag/v0.9.0) configuration,
based on the [NvChad](https://nvchad.com/) distribution. It has preconfigured a
wide range of LSPs, formatters, linters and debuggers.

## Pre-requisites

- [Neovim 0.9.0](https://github.com/neovim/neovim/releases/tag/v0.9.0)
- [Nerd Font](https://www.nerdfonts.com/)
- [Ripgrep](https://github.com/BurntSushi/ripgrep)
- [Glow](https://github.com/charmbracelet/glow)
- [Terraform](https://www.terraform.io/)

## Preview Instructions

 > Install requires Neovim 0.9+. Always review the code before installing a configuration.

Clone the repository and install the plugins:

```sh
git clone git@github.com:le4ker/NvMegaChad ~/.config/le4ker/NvMegaChad
```

Open Neovim with this config:

```sh
NVIM_APPNAME=le4ker/NvMegaChad/ nvim
```

## Installation Instructions

Remove existing config:

```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

Install config:

```sh
git clone https://github.com/le4ker/NvMegaChad ~/.config/nvim/
nvim
```

## Language Servers

- Bash Language Server
- Clangd
- CSS Language Server
- Dockerfile Language Server
- gopls
- HTML Language Server
- Lua Language Server
- Marksman
- Pyright
- Terraform Language Server
- Typescript Language Server
- VimScript Language Server
- YAML Language Server

## Formatters

- beautysh
- black
- clang-format
- gofmt
- isort
- prettier
- rubocop
- stylua
- terraform_fmt
- yamlfmt

## Linters

- golangci-lint
- markdownlint
- tflint

## Debuggers

- Delve
- DebugPy

## Preview

### Github Copilot

![copilot](.github/img/copilot.png)

### Search

![search](.github/img/search.png)

### Git commits

![git-commits](.github/img/git-commits.png)

### Markdown Preview

![md-preview](.github/img/md-preview.png)

### Cheatsheet

![cheatsheet](.github/img/cheatsheet.png)
