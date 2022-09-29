<div style="flex" align="center">
  <img src="https://user-images.githubusercontent.com/101672047/193060978-7bacb770-ee07-4b87-9256-e3749829c4b2.gif" alt="Logo">
</div>

<div style="flex" align="center">
  <img src="https://img.shields.io/badge/neovim-v0.8.0--dev--nightly--1-green" alt="Neovim Badge">
</div>

<div style="flex" align="center">
  Universal neovim configuration for JavaScript, Python, TypeScript and Rust.
</div>
<br>

> **Hikikomori** (Japanese: ひきこもり or 引きこもり, lit. "pulling inward, being confined"), also known as acute social withdrawal, is total withdrawal from society and seeking extreme degrees of social isolation and confinement. Hikikomori refers to both the phenomenon in general and the recluses themselves. Hikikomori have been described as loners or "modern-day hermits". Estimates suggest that half a million Japanese youths have become social recluses, as well as more than half a million middle-aged individuals.
>
> [Wikipedia](https://en.wikipedia.org/wiki/Hikikomori)

## Features
- Automatic installation of package manager (`packer`)
- Automatic installation of lsp for:
  - Python
  - Rust
  - TypeScript
    - Vue
    - Eslint
    - Prettier
  - JavaScript
  - Lua
  - Neovim Lua
- Minimal UI overdrive
- No remapped standard hotkeys
- Smart formatting (via formatters or with standard method)
- No default plugins (like NetRW) and other shit

## Installation
```bash

# Exporting default nvim folder
export NVIM_DIR="$HOME/.config/nvim";

# Making backup of your old configuration
[[ -d $NVIM_DIR ]] && mv NVIM_DIR "NVIM_DIR-old";

# Cloning new config
git clone https://github.com/crackidocky/hikko\
 $HOME/.config/nvim;

# Downloading packer (plugin manager)
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

After you enter the Neovim, just enter:
```vim
:PackerSync
```

## Supported Languages
<div style="flex" align="center">
  <img width="80" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/typescript/typescript-original.svg" />
  <img width="80" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" />
  <img width="80" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" />
  <img width="80" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rust/rust-plain.svg" />
  <img width="80"src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vuejs/vuejs-original.svg" />
  <img width="80" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/lua/lua-original.svg" />
</div>

