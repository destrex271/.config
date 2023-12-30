local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		"Alexis12119/nightly.nvim",
		lazy = false
	},
	-- Alternate colorscheme if you get bored by the current one
	--{ 
	 --	"bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000,
	--},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{"mbbill/undotree"},
	{"tpope/vim-fugitive", event = 'BufWinEnter'},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
    {
        'windwp/nvim-autopairs',
        -- event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
    {'terrortylor/nvim-comment'}
})
