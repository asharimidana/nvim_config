" setlocal tabstop=2
" setlocal shiftwidth=2

" let g:rufo_auto_formatting = 1

function! RubocopAutocorrect()
  execute "!rubocop -a " . bufname("%")
  " call SyntasticCheck()
endfunction


map <silent> <Leader>w:call RubocopAutocorrect()<cr>
