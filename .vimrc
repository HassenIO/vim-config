"
" Load bundles using vundle
" Note: Don't forget to setup vundle before using it:
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle,... required! 
Bundle 'gmarik/vundle'
" Make Vim play nicely with iTerm 2 and tmux.
Bundle 'sjl/vitality.vim'
" Syntax checking hacks for vim
Bundle 'scrooloose/syntastic'
" EasyMotion provides a much simpler way to use some motions in vim.
Bundle 'Lokaltog/vim-easymotion'
" surround.vim: quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'
" Vim script for text filtering and alignment
Bundle 'godlygeek/tabular'
" snipMate.vim aims to be a concise vim script that implements some of
" TextMate's snippets features in Vim.
Bundle 'msanders/snipmate.vim'
" Vim plugin for intensely orgasmic commenting
Bundle 'scrooloose/nerdcommenter'
" fugitive.vim: a Git wrapper so awesome, it should be illegal
Bundle 'tpope/vim-fugitive'
" rails.vim: Ruby on Rails power tools
Bundle 'tpope/vim-rails'
" Various snippets for developing node.js from vim
Bundle 'jamescarr/snipmate-nodejs'
" A tree explorer plugin for vim.
Bundle 'scrooloose/nerdtree'
" The ultimate vim statusline utility.
Bundle 'Lokaltog/vim-powerline'
" Fuzzy file, buffer, mru, tag, etc finder.
Bundle 'kien/ctrlp.vim'
" Open file under cursor when pressing gf (if the text under the cursor is a
" path)
Bundle 'amix/open_file_under_cursor.vim'
" Maintains a history of previous yanks, changes and deletes
Bundle 'vim-scripts/YankRing.vim'
" Buffer Explorer / Browser
Bundle 'vim-scripts/bufexplorer.zip'
" one colorscheme pack to rule them all!
Bundle 'flazz/vim-colorschemes'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


"
" Set some bundles parameters
"
let g:Powerline_symbols = 'fancy'
let g:EasyMotion_leader_key = '<Leader><Leader>'
let NERDTreeChDirMode=2
let NERDTreeShowHidden=1 

"
" Syntastic Error tracker settings (hassen's part).
"

" Automatically open error window if any error.
let g:syntastic_auto_loc_list=1

" Status line flag
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Automatically jump to the first detected error
let g:syntastic_auto_jump=1

" Use Sign interface to mark syntax error
let g:syntastic_enable_signs=1


"
" CtrlP settings
" See :help ctrlp-options
"
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_switch_buffer = 'E'
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend|app|exe|dmg)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0


"
" Settings.
"

" >> General
set autochdir           " The working directory is always the one where the active buffer is located.
set cursorline          " Highlight the current line
set enc=utf-8		" Set UTF-8 encoding
set laststatus=2	" Always display a status line at the bottom of the window
"set mapleader = ','	" Change the default <Leader> from \  
set mousehide		" Hide the mouse when typing
set nocompatible	" be iMproved
set t_Co=256		" Enable 256 colors in vim
set timeoutlen=500	" Adjust the lag after typing <Leader>+Command

" >> Line numbering
set number		" Set line numbers
"set relativenumber	" Set relative line number

" >> Indentation
set autoindent		" Same indent as previous line
set expandtab		" Replace <Tab> by spaces
set shiftwidth=4	" Spaces for the >> operation
set smartindent		" Smart insertion of indent in some cases
set softtabstop=4	" How many columns is a <Tab>
"set tabstop=4		" Spaces inserted when pressing <Tab> key

" >> Search
set hlsearch		" Highlight searching  
set incsearch		" Incremental searching
set smartcase		" Set smart case


"
" Useful keys
"
nmap \b :CtrlPBuffer<CR>            " Open CtrlP buffer search
nmap \e :BufExplorer<CR>            " List buffers
nmap \f :CtrlP<CR>                  " Open CtrlP file search
nmap \n :NERDTreeToggle .<CR>       " Toggle NERDTree window
nmap \p :YRShow<CR>                 " Show YankRing list
nmap \q :nohlsearch<CR>             " Remove search highlight


" 
" Set VIM design
"

" >> Color Schemes
colorscheme Mustang	" Set colorscheme 

" >> Syntax highlighting
syntax enable		" Set syntax highlighting ON

