local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

packer.startup(function(use)
	use("wbthomason/packer.nvim")

	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls").setup()
		end,
		requires = { "nvim-lua/plenary.nvim" },
	})
	-- flutter
	use("dart-lang/dart-vim-plugin")
	use({ "ellisonleao/dotenv.nvim" })
	use("kaicataldo/material.vim")
	use("joshdick/onedark.vim")
	use("sonph/onehalf")
	use("tomasr/molokai")
	use("kyoz/purify")
	use("StanAngeloff/php.vim")
	use("PHP-CS-Fixer/PHP-CS-Fixer")
	use("nvim-treesitter/nvim-treesitter")
	-- use 'thosakwe/vim-flutter'
	--[[ use 'natebosch/vim-lsc'
	use 'natebosch/vim-lsc-dart' ]]

	-- esling
	use("MunifTanjim/eslint.nvim")
	use("mfussenegger/nvim-lint")
	use("MunifTanjim/prettier.nvim")

	-- color picker
	use("KabbAmine/vCoolor.vim")
	use("brenoprata10/nvim-highlight-colors")

	use("onsails/lspkind.nvim")

	use("mhartington/formatter.nvim")
	use("sbdchd/neoformat")

	use("hrsh7th/cmp-nvim-lsp")

	use("hrsh7th/vim-vsnip")
	use({ "hrsh7th/vim-vsnip-integ", opt = true })
	use("hrsh7th/cmp-vsnip")

	use("hrsh7th/cmp-buffer")
	use("hrsh7th/nvim-cmp")
	use({ "williamboman/mason.nvim" })
	use({
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	-- 3
	use("folke/tokyonight.nvim")
	use("terrortylor/nvim-comment")
	use("b3nj5m1n/kommentary")
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	use({ "hrsh7th/nvim-cmp" })
	use("rafamadriz/friendly-snippets")

	use("karb94/neoscroll.nvim")
	use("wbthomason/packer.nvim")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("onsails/lspkind.nvim")

	use("windwp/nvim-autopairs")

	-- For vsnip users.
	use("hrsh7th/cmp-vsnip")

	use("lukas-reineke/indent-blankline.nvim")

	use("nvim-lualine/lualine.nvim")
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	})

	use("nvim-telescope/telescope.nvim")
	use("mg979/vim-visual-multi")
	-- use("morhetz/gruvbox")

	use({ "ellisonleao/gruvbox.nvim" })
	use("dense-analysis/ale")

	-- Load on specific commands
	use({ "tpope/vim-dispatch", opt = true, cmd = { "Dispatch", "Make", "Focus", "Start" } })
	-- Load on an autocommand event
	use({ "andymass/vim-matchup", event = "VimEnter" })
	use({
		"haorenW1025/completion-nvim",
		opt = true,
		requires = { { "hrsh7th/vim-vsnip", opt = true }, { "hrsh7th/vim-vsnip-integ", opt = true } },
	})

	-- Post-install/update hook with neovim command
	use({ "nvim-treesitter/nvim-treesitter" })

	-- Use dependency and run lua function after load
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup()
		end,
	})
	-- You can specify multiple plugins in a single call
	use({ "tjdevries/colorbuddy.vim" })
end)
