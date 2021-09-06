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
"set nocompatible
"filetype off
"set rtp+=/usr/share/vim/vimfiles/autoload/vundle.vim

"call vundle#begin()

"Plugin 'vim-airline/vim-airline'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'tpope/vim-surround'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'tpope/vim-fugitive'
"Plugin 'scrooloose/syntastic'
"Plugin 'chrisbra/colorizer'
"Plugin 'scrooloose/nerdtree'
"Plugin 'ctrlpvim/ctrlp.vim'

"call vundle#end()
"filetype plugin indent on
""" Vundle settings end


call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'bfredl/nvim-ipy'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Plug 'scrooloose/syntastic'
Plug 'dense-analysis/ale'
Plug 'chrisbra/colorizer'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'lervag/vimtex'
call plug#end()


set number relativenumber
" set list
set mouse=a
set clipboard=unnamedplus

"set tabstop=4
"set shiftwidth=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent

set foldmethod=syntax
set foldlevelstart=10
set splitbelow splitright

set conceallevel=0
let g:vim_markdown_math = 1

highlight MatchParen ctermfg=white ctermbg=yellow cterm=NONE
highlight SpecialKey ctermfg=black

let mapleader = " "
nmap <Leader><Tab> :bnext<CR>
nmap <Leader><S-Tab> :bprevious<CR>
nmap <S-X> :bdelete<CR>
nmap <Leader>f za<CR>


" Plugin Mappings

""" IPython
let g:nvim_ipy_perform_mappings = 0
let g:ipy_truncate_input = 1
nmap <Leader>r <Plug>(IPy-Run)
nmap <Leader><S-r> <Plug>(IPy-RunAll)
nmap <Leader><CR> <Plug>(IPy-RunCell)
nmap <Leader>? <Plug>(IPy-WordObjInfo)
"""

""" coc-texvim
let g:tex_flavor = 'latex'

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
"""

""" coc-spell-checker
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
"""
