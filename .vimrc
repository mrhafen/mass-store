set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" add your plugin here

Plugin 'VundleVim/Vundle.vim'               " required
Plugin 'Valloric/YouCompleteMe'             " YCM
Plugin 'taglist.vim'                        " Taglist
Plugin 'scrooloose/nerdtree'                " file/directory treee
Plugin 'scrooloose/nerdcommenter'           " code commenter
Plugin 'Raimondi/delimitMate'
Plugin 'Chiel92/vim-autoformat'
Plugin 'kien/ctrlp.vim'                     " Fuzzy file, buffer, mru, tag, etc finder
Plugin 'morhetz/gruvbox'                    " gruvbox themecolor
Plugin 'vim-airline/vim-airline'            " vim-airline

call vundle#end()            " required
filetype plugin indent on    " required 


" ----------------------------------------------------
"  basic settings

set nu
syntax enable
syntax on
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   " content of statusline
set autoread
set nobackup
set autowrite
set cursorline              " differ current line
set noeb                    " drop out voice of wrong input
set confirm                 " pop confirm when dealing with unsaved or read-only files
set noswapfile
set history=1000

" theme 
set background=dark             " dark
colorscheme gruvbox           " use gruvbox theme

set autoindent
set cindent
set smartindent
" replace tab with 4 whitespace
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"make
autocmd FileType c setlocal makeprg=gcc\ -Wall\ -g\ %\ -o\ ./debug%<
autocmd FileType cpp setlocal makeprg=g++\ -Wall\ -g\ -std=c++11\ %\ -o\ ./debug/%<
autocmd FileType python setlocal makeprg=python\ %

" encoding, autoindent
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set fileformats=unix,dos
set ts=4

" search
set ignorecase          " case insensitive
set hlsearch
set incsearch

set showmatch           " highlight matched parenthesis
set matchtime=1         " time of highlight showing(1/10s)

" ----------------------------------------------------
"  shortcut settings

nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

" ----------------------------------------------------
"  plugin settings

"  YCM
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
set completeopt-=preview

" Taglist
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
map <silent><leader>t :TlistToggle<CR>

" nerd tree
map <silent><leader>r :NERDTreeToggle<CR>

" nerd commenter
let g:NERDSpaceDelims = 1
map cc          <plug>NERDCommenterComment<CR>
map cu          <plug>NERDCommenterUncomment<CR>
map cs          <plug>NERDCommenterSexy<CR>
map cy          <plug>NERDCommenterYank<CR>
map ce          <plug>NERDCommenterToEOL<CR>
map c<space>    <plug>NERDCommenterToggle<CR>
map ca          <plug>NERDCommenterAltDelims<CR>

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'

"vim-airline
let g:airline_powerline_fonts = 1
