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
- Module installer

<div align="center" style="flex">
    <img width="1082" alt="image" src="https://user-images.githubusercontent.com/101672047/193386750-42dda9a8-a1f9-4c35-84f8-710c46924ebd.png">
</div>



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

# How does plugin manager works
In directory `lua/plugins/`, you have a lot of files inside which are configurations for plugins. At the end of each file, we return a function, that takes a `use` callback. `use` is a special function provided by [packer](https://github.com/wbthomason/packer.nvim) in order to use the plugin.

If we go to directory `lua/utils/`, then we will see a file called `installer.lua`, in which each file from directory `lua/plugins/` is imported. In the `installer.lua` file, we declare an empty hash table, and also indicate that it will have a certain `M.use` field, which is equal to `nil` for now. Each property inside `M` is a function that will expose the code we need, but for now we don't have a `use` callback.

Now if we go to the `lua/manager.lua` file, we will see that we are using the standard boilerplate for the packer - we are declaring a function inside which `use` will finally become available to us.

We assign `use` to the `M.use` field, and then we start calling the properties we need from the `M` table, which will later expand into the code that is needed to declare to Packer that the plugin is used.
