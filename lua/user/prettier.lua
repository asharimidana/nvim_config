local null_ls = require("null-ls")
local prettier = require("prettier")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local conditional = function(fn)
	local utils = require("null-ls.utils").make_conditional_utils()
	return fn(utils)
end
local sources = {
	formatting.prettier,
	diagnostics.eslint,
}
null_ls.setup({
	sources = sources,
})

-- null-ls plugin end
prettier.setup({
	bin = "prettier", -- or `'prettierd'` (v0.22+)
	filetypes = {
		"css",
		"graphql",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"less",
		"markdown",
		"scss",
		"typescript",
		"typescriptreact",
		"yaml",
		"eruby",
	},
	cli_options = {
		arrow_parens = "always",
		bracket_spacing = true,
		bracket_same_line = false,
		embedded_language_formatting = "auto",
		end_of_line = "lf",
		html_whitespace_sensitivity = "css",
		-- jsx_bracket_same_line = false,
		jsx_single_quote = false,
		print_width = 120,
		prose_wrap = "preserve",
		quote_props = "as-needed",
		semi = true,
		single_attribute_per_line = false,
		single_quote = false,
		tab_width = 4,
		trailing_comma = "es5",
		use_tabs = true,
		vue_indent_script_and_style = false,
	},
})
