"タブ幅をリセット
au BufNewFile,BufRead * set tabstop=4 shiftwidth=4

".rhtmlと.rbと.ymlでタブ幅を変更
au BufNewFile,BufRead *.rhtml set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.rb set tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.html.erb set tabstop=2 shiftwidth=2 noet
au BufNewFile,BufRead *.yml set tabstop=2 shiftwidth=2

"Rails関連ファイルで文字コードをUFT-8に設定
au User Rails* set fenc=utf-8

au FileType ruby  :set nowrap tabstop=2 tw=0 sw=2 expandtab
"au FileType eruby :set nowrap tabstop=2 tw=0 sw=2 noet
au BufNewFile *.rhtml set ft=eruby fenc=utf-8
au BufNewFile *.rb    set ft=ruby  fenc=utf-8
au BufNewFile *.html.erb set ft=ruby  fenc=utf-8
au BufNewFile *.rjs   set ft=ruby  fenc=utf-8
au BufNewFile *.po    set ft=ruby  fenc=utf-8
au BufNewFile,BufRead *.rhtml set ft=mason fenc=utf-8
au BufNewFile,BufRead *.html.erb  set ft=ruby  fenc=utf-8
au BufNewFile,BufRead *.rb  set ft=ruby  fenc=utf-8
au BufNewFile,BufRead *.rjs set ft=ruby  fenc=utf-8
au BufNewFile,BufRead *.po  set ft=ruby  fenc=utf-8

"Error Check
compiler ruby

augroup rbsyntaxcheck
  autocmd! BufWritePost <buffer> silent make! -c "%" | redraw!
augroup END


