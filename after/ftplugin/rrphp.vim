  augroup packer_user_config
    autocmd!
	autocmd BufWrite *.php :set ft=html
	autocmd BufWrite *.php :normal =G
	autocmd BufWrite *.php :set ft=php
	autocmd InsertEnter *.php :set autoindent

 "    autocmd BufEnter *.js lua vim.cmd "set ft=javascriptreact" 
 " 	autocmd BufEnter * lua vim.cmd "TSEnable highlight" 
	" autocmd BufWrite *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html lua vim.cmd "Prettier" 
 "    autocmd InsertEnter * lua vim.cmd"highlight CursorLine guifg=none guibg=#282828 ctermfg=none ctermbg=Black"
 "    autocmd InsertLeave * lua vim.cmd"highlight CursorLine guifg=none guibg=#282828 ctermfg=none ctermbg=Black"
 "    autocmd BufRead * lua vim.cmd"highlight CursorLine guifg=none guibg=#282828 ctermfg=none ctermbg=Black"
  augroup end
