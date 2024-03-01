local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
null_ls.setup({
	on_attach = function()
		vim.diagnostic.config({
			virtual_text = true,
		})
	end,
	sources = {
		-- untuk inisialisasi formater setelah itu install formater dengan mason
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.formatting.rubocop,

		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.diagnostics.ruff,
	},
})
