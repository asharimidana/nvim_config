require("mason").setup()
require("mason-lspconfig").setup()
--require("emmet_ls").setup()

require("mason-lspconfig").setup({
	ensure_installed = { 
	"html", 
	-- "rust_analyzer", 
	"emmet_ls", 
	"intelephense" },
})
