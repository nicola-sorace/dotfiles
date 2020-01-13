" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1


""" Vundle settings start
set nocompatible
filetype off
set rtp+=/usr/share/vim/vimfiles/autoload/vundle.vim

call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on
""" Vundle settings end


set number relativenumber
" set list
set mouse=a
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4

set foldmethod=syntax
set foldlevelstart=10
set splitbelow splitright

highlight MatchParen ctermfg=white ctermbg=yellow cterm=NONE
highlight SpecialKey ctermfg=black

nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
nmap <S-X> :bdelete<CR>
nmap <Space> za<CR>
