set nocompatible              " be iMproved, required
set encoding=utf-8
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" vim-go
Plugin 'fatih/vim-go'
" YCM
Plugin 'Valloric/YouCompleteMe'
" ultisnips
Plugin 'SirVer/ultisnips'
" nerdtree
Plugin 'scrooloose/nerdtree'
" 
Plugin 'christoomey/vim-tmux-navigator'
"
Plugin 'pangloss/vim-javascript'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"YCM settings
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['']
let g:ycm_key_invoke_completion = ''
" UltiSnips setting
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" vim-go settings
let g:go_fmt_command = "goimports"
let g:tmux_navigator_no_mappings = 1
" js
let g:javascript_plugin_jsdoc = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-/> :TmuxNavigatePrevious<cr>
map <c-n> :NERDTreeToggle<CR>

syntax on
set nu!

