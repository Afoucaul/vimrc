set nocompatible      " Nécessaire
filetype off          " Nécessaire

" Ajout de Vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" On indique à Vundle de s'auto-gérer :)
Plugin 'gmarik/Vundle.vim'  " Nécessaire
Plugin 'elixir-editors/vim-elixir'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"
" C'est ici que vous allez placer la liste des plugins que Vundle doit gérer
"

call vundle#end()            " Nécessaire
filetype plugin indent on    " Nécessaire


" Sourcing functions
so ~/.vim/functions.vim


" Displaying line numbers
set number


" Underline the line under the cursor
set cursorline


" Setting tabs up

" The width of a hard tabstop measured in spaces -- effectively the (maximum) width of an actual tab character.
set tabstop=8 
" The size of an indent. It's also measured in spaces.
set softtabstop=0 
" Setting this to a non-zero value other than tabstop will make the tab key (in insert mode) insert a combination of spaces (and possibly tabs) to simulate tab stops at this width.
set expandtab 
" Enabling this will make the tab key (in insert mode) insert spaces instead of tab characters. This also affects the behavior of the retab command.
set shiftwidth=4
" Enabling this will make the tab key (in insert mode) insert spaces or tabs to go to the next indent of the next tabstop when the cursor is at the beginning of a line.
set smarttab


" Don't override the register content when pasting
vnoremap <leader>p "_dP


" Allow backspace over autoindent and insert start, but not over line breaks
set backspace=indent,start


" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" Statusline
set laststatus=2
set statusline=
set statusline+=%f
set statusline+=\ line:\ 
set statusline+=%l
set statusline+=,\ col:\ 
set statusline+=%c
"set statusline+=%f:%l:%c/%L
"set statusline+=%#PmenuSel#
"set statusline+=%{StatuslineGit()}
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m\
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c
"set statusline+=\ 
