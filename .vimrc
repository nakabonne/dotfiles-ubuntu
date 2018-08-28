" Basic settings--------------------------
syntax on
set autoindent
set smartindent
set expandtab
set number
set nowrap
"set inccommand=split
" 拡張子ごとにインデント調整
set tabstop=2
set shiftwidth=2
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.php setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END
" 検索結果をハイライト
set hlsearch
" OSとクリップボードを共有する
set clipboard+=unnamed
" insertモードでdelete出来るように
set nocompatible
"カーソルを行頭，行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"deleteで削除できるものを指定する
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start
if has('vim_starting')
    " 挿入モード時に非点滅の縦棒タイプのカーソル
    let &t_SI .= "\e[6 q"
    " ノーマルモード時に非点滅のブロックタイプのカーソル
    let &t_EI .= "\e[4 q"
    " 置換モード時に非点滅の下線タイプのカーソル
    let &t_SR .= "\e[2 q"
endif
" modifiableをオン
set modifiable
set write
" バッファ切替時ファイル保存を不要にする
set hidden


" alias----------------------------------------------
imap jj <Esc>
nnoremap ; :
nnoremap <C-q> <C-^>
" ハイライト
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
nmap # <Space><Space>:%s/<C-r>///g<Left><Left>
