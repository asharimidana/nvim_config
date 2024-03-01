
function! RubocopAutocorrect()
  " execute "python " . bufname("%")
  " echo "berhasil!!". bufname("%")
  " TermExec cmd='python "./%"'
    lua vim.diagnostic.config({virtual_text = false})
endfunction
" ini untuk konfigurasi comman
" map <silent> <Leader>w:call RubocopAutocorrect()<cr>
" map <silent> <F10>:call RubocopAutocorrect()<cr>
