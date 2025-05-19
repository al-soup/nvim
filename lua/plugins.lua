-- Auto-install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- =======
-- PLUGINS
-- =======

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Status line
  use 'itchyny/lightline.vim'
  
  -- Rainbow parentheses
  use 'frazrepo/vim-rainbow'
  
  -- Surround text objects
  use 'tpope/vim-surround'
  
  -- Easy commenting
  use 'tpope/vim-commentary'
  
  -- Motion plugin
  use 'justinmk/vim-sneak'
  
  -- Colorscheme
  use {
    "wurli/cobalt.nvim",
    config = function()
      vim.cmd[[colorscheme cobalt]]
    end
  }
  -- Other nice color schemes:
  -- navarasu/onedark.nvim
  -- folke/tokyonight
  -- ErichDonGubler/vim-sublime-monokai
  -- S-Spektrum-M/odyssey.nvim
  -- daenuprobst/lcarsoft
  -- devoc09/lflops.nvim

  
  -- Show indentation levels
  use 'Yggdroot/indentLine'
  
  -- Git changes in the gutter
  use 'airblade/vim-gitgutter'
  
  -- Fuzzy finder
  use {
    'junegunn/fzf',
    run = function() vim.fn['fzf#install']() end
  }
  use 'junegunn/fzf.vim'
  
  -- Ranger file manager integration
  use 'rbgrouleff/bclose.vim' -- Dependency for ranger.vim
  use 'francoiscabrol/ranger.vim'
  
  -- Highlight yanked text
  use 'machakann/vim-highlightedyank'
  
  -- Rust support
  use 'rust-lang/rust.vim'
  
  -- Go support
  use {
    'fatih/vim-go',
    run = ':GoUpdateBinaries'
  }
  
  -- Code completion and language server protocol
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }
  
  -- Code formatting
  use {
    'prettier/vim-prettier',
    run = 'yarn install',
    ft = {
      'javascript', 'typescript', 'css', 'less', 
      'scss', 'json', 'graphql', 'markdown', 
      'vue', 'svelte', 'yaml', 'html', 'go'
    }
  }

  -- Improve highlighting for all languages
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  use "nvim-lua/plenary.nvim" -- Dependency for telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- ====================
  -- PLUGIN CONFIGURATION
  -- ====================
  vim.cmd("colorscheme cobalt")
  
  -- -------------
  -- vim-gitgutter
  -- -------------
  -- The sign column is the one to the left of the numbers column.
  -- vim-gitgutter gives it an ugly color. The color can be changed or turned off
  vim.cmd('highlight clear SignColumn') -- change color instead: `:highlight SignColumn guibg=darkgrey`
  
  -- -------------------
  -- vim-highlightedyank
  -- -------------------
  vim.g.highlightedyank_highlight_duration = 600
  
  -- --------
  -- rust.vim
  -- --------
  vim.g.rustfmt_autosave = 1

  -- ----------
  -- ranger.vim
  -- ----------
  vim.g.ranger_map_keys = 0
  
  -- ------
  -- vim-go
  -- ------
  -- Disable some of the shortcuts from the plugin to stop interferance with my
  -- defaults
  vim.g.go_def_mapping_enabled = 0
  vim.g.go_doc_keywordprg_enabled = 0
  
  -- Enable rainbow brackets in all files
  vim.g.rainbow_active = 1

  
  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)
