-- The whole point of most of this is to bootstrap packer so that it is automatically installed.
-- secondarily this functions to define any plugins that are going to be installed/used.
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

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- define plugins here
  use 'navarasu/onedark.nvim' -- onedark theme
  use 'nvim-tree/nvim-tree.lua' -- file explorer plugin
  use 'nvim-tree/nvim-web-devicons' -- nice icons
  use 'nvim-lualine/lualine.nvim' -- powerline for neovim
  use 'nvim-treesitter/nvim-treesitter' -- mainly for good highlighting
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  } -- the plugin for fuzzy finding 
  if packer_bootstrap then
    require('packer').sync()
  end
end)
