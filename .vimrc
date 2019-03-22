set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mdempsky/gocode', {'rtp': 'vim/'}
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()  
filetype plugin indent on
set completeopt=longest,menuone

autocmd FileType tex setlocal spell spelllang=en_us
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow
set paste!
au BufRead /tmp/mutt-* set tw=72
au BufRead ~/tmp/mutt-* set tw=72
set tabstop=2
set shiftwidth=2
set expandtab
syntax on
let g:go_fmt_command = "goimports"
