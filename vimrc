" Vundle configuration
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'vim-pandoc/vim-pantondoc'
Bundle 'vim-pandoc/vim-pandoc-syntax'
Bundle 'junegunn/goyo.vim'
Bundle 'vim-scripts/LanguageTool'

call vundle#end()
filetype plugin indent on
" End of Vundle configuration

" Use solarized colorscheme for markdown else jellybeans
set t_Co=256
autocmd FileType * if &filetype == 'pandoc' || &filetype == 'tex' | colorscheme solarized | else | colorscheme jellybeans | endif
autocmd FileType tex Goyo
autocmd FileType pandoc Goyo
syntax on
set number

set tabstop=8 expandtab shiftwidth=4 softtabstop=4	
set encoding=utf-8
set ruler " Current line and column
set wrap lbr
set hlsearch " Highlight search

noremap j gj
noremap k gk
imap jj <ESC> " Quick ESC

" Language tool
let g:languagetool_jar='/usr/local/cellar/languagetool/2.4.1/libexec/languagetool-commandline.jar'
