local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	-- Package Manager
	use 'wbthomason/packer.nvim'
	
	-- Git
	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		},
        config = function()
            require('gitsigns').setup()
        end
	}
    use 'kdheepak/lazygit.nvim'
	
	-- -- File Finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} },
		config = function()
            require('file-finder')
		end
	}
	
	-- Colors
	use {
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
            require('colorscheme')
		end
	}
	use {
		'nvim-treesitter/nvim-treesitter',
		branch = '0.5-compat',
		run = ':TSUpdate',
		config = function()
            require('highlighting')
		end
	}
	use{
		'mvllow/modes.nvim',
		event = 'BufRead', -- optional lazy loading
		config = function()
			vim.opt.cursorline = true
			require('modes').setup()
		end
	}
	
	-- RGB color picker for css
	use 'norcalli/nvim-colorizer.lua'
	
	-- Tab Bars
	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {'kyazdani42/nvim-web-devicons'},
		config = function()
            require('tree')
		end
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
            require('status-bar')
		end
	}
	
	-- Utils
	use 'lukas-reineke/indent-blankline.nvim'
	use {
		'folke/which-key.nvim',
		config = function()
            require('key-hint')
		end
	}
  if packer_bootstrap then
    require('packer').sync()
  end
end)
