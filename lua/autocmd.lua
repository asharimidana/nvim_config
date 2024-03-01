vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufEnter *.js lua vim.cmd "set ft=javascriptreact" 
	autocmd BufWrite *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html lua vim.cmd "Prettier" 

    autocmd BufEnter *.py lua vim.diagnostic.config({virtual_text=false}) 
 	autocmd BufEnter * lua vim.cmd "TSEnable highlight" 
    autocmd InsertEnter * lua vim.cmd"highlight CursorLine guifg=none guibg=#282828 ctermfg=none ctermbg=Black"
    autocmd InsertLeave * lua vim.cmd"highlight CursorLine guifg=none guibg=#282828 ctermfg=none ctermbg=Black"
    autocmd BufRead * lua vim.cmd"highlight CursorLine guifg=none guibg=#282828 ctermfg=none ctermbg=Black"
  augroup end
]])

require("toggleterm").setup()
