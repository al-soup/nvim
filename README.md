# Neovim Setup 🪄

## Initial Setup
1. Clone this repository to `~/.config/nvim/`
2. Open Neovim and run `:PackerSync`

The *init.lua* file currently references the dotfile *~/.nvimrc* because not all of the configuration has been migrated to Lua.

## Plugin Management
- `:PackerSync` - Install/update plugins and compile config (used for most things)
- `:PackerUpdate` - Update all plugins
- `:PackerClean` - Remove unused plugins

## Notes
- Requires [Packer.nvim](https://github.com/wbthomason/packer.nvim) plugin manager
- It might also be necessary to install dependenecies like NerdFonts and node.js.
