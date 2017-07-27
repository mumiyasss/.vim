set number
set nowrap
syntax on

"[Начало] Настройки для Vundle со статьи из Хабра
set nocompatible              " be iMproved, required
filetype off                  " required

"=====================================================
" Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'		" let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
Plugin 'majutsushi/tagbar'          	" Class/module browser

"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'   	    	" Lean & mean status/tabline for vim
Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more

"--------------=== Snippets support ===---------------
Plugin 'garbas/vim-snipmate'		" Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
Plugin 'tomtom/tlib_vim'		" dependencies #2
Plugin 'honza/vim-snippets'		" snippets repo

"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'		" Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

call vundle#end()            		" required
filetype on
filetype plugin on
filetype plugin indent on

"[Конец] Настройки для Vundle со статьи из Хабра

set enc=utf-8     " utf-8 по дефолту в фÐ°йлах
set ls=2          " всегда показываем статусбар
set incsearch     " инкреминтируемый поиск
set hlsearch      " подсветка результатов поиска
set scrolloff=5   " 5 строк при скролле за 	

" раскомментируйте эти строки, если хотите, чтобы NERDTree/TagBar
" автоматически отображались при запуске vim
 autocmd vimenter * TagbarToggle
 autocmd vimenter * NERDTree
 autocmd vimenter * if !argc() | NERDTree | endif


nmap <F3> :NERDTreeToggle  /home/kolya/djbate <cr>
vmap <F3> <esc>:NERDTreeToggle /home/kolya/djbate <cr>
imap <F3> <esc>:NERDTreeToggle /home/kolya/djbate <cr>
