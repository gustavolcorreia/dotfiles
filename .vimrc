"!/bin/sh
" ~/.vimrc
" Author: Gustavo Correia <gustavolcorreia@gmail.com>
" Source: https://github.com/gustavolcorreia/dotfiles
"

" Vundle Plug-in Manager
set nocompatible                                   " ** be iMproved, required **
set rtp+=~/.vim/bundle/Vundle.vim         " ** Set the runtime path to Vundle **
call vundle#begin()
"################# **  Put your plugins after this line. ** ####################

    Plugin 'VundleVim/Vundle.vim'
    " ** Editing Plugins  **
    Plugin 'tpope/vim-abolish'
    Plugin 'vim-scripts/Align'
    Plugin 'Raimondi/delimitMate'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'terryma/vim-expand-region'
    Plugin 'sjl/gundo.vim'
    Plugin 'nathanaelkane/vim-indent-guides' 
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'tpope/vim-repeat'
    Plugin 'tpope/vim-surround'
    Plugin 'godlygeek/tabular'
    " ** File Management **    
    Plugin 'scrooloose/nerdtree'
    " ** Git  **
    Plugin 'tpope/vim-fugitive'
    " ** Interface **
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    " ** Searching  **
    Plugin 'ctrlpvim/ctrlp.vim'

    Plugin 'sheerun/vim-polyglot'
    Plugin 'tmux-plugins/vim-tmux'
    Plugin 'tmux-plugins/vim-tmux-focus-events'

"################## **  Put your plugins before this line. ** ##################

call vundle#end()                                               " ** required **
filetype plugin indent on                                       " ** required **

"############# **  Put your non-Plugin stuff after this line. ** ###############

"#######################################
"#          General Options            #
"#######################################

set term=screen-256color
set t_Co=256                                    " ** enable 256 colors in vim **
set t_ut=
set background=dark                             " ** assume a dark background **
colorscheme mopkai                              " ** load color scheme script **
syntax on                                   " ** enable syntax highlightings  **

set guifont=SauceCodePro\ Nerd\ Font\ Mono\ 13

set colorcolumn=81
set tabstop=4                            " ** number of visual spaces per tab **
set softtabstop=4                   " ** number of spaces in tab when editing **
set expandtab                                            " ** tabs are spaces **

set number                                             " ** show line numbers **
set showcmd                                   " ** show command in bottom bar **
filetype plugin indent on            " ** load filetype-specific indent files **
set wildmenu                        " ** visual autocomplete for command menu **
set lazyredraw                              " ** redraw only when we need to. **
set showmatch                                  " ** highlight matching [{()}] **

set ignorecase                                " ** ignore case when searching **
set incsearch                           " ** search as characters are entered **
set hlsearch                                            " ** highlight matche **
nnoremap <leader><space> :nohlsearch<CR>       " ** turn off search highlight **

nnoremap j gj                             " ** move vertically by visual line **
nnoremap k gk
nnoremap B ^                               " ** move to beginning/end of line **
nnoremap E $
nnoremap $ <nop>                                 " ** $/^ doesn't do anything **
nnoremap ^ <nop>
nnoremap gV `[v`]                           " ** highlight last inserted text **

let mapleader=","                                        " ** leader is comma **

"############################ ** Plugins Configs ** ############################

"#######################################
"#             EditorConfig            #
"#######################################
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:EditorConfig_exclude_patterns = ['scp://.*']
"#######################################
"#           Expand Region             #
"#######################################
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
let g:expand_region_use_select_mode = 1
"#######################################
"#                Gundo                #
"#######################################
nnoremap <F5> :GundoToggle<CR>
"#######################################
"#            Indent Guides            #
"#######################################
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
"#######################################
"#            NERD Commenter           #
"#######################################
let g:NERDSpaceDelims = 1           " ** add spaces after comment delimiters  **
let g:NERDCompactSexyComs = 1          " ** use compact syntax for multi-line **
let g:NERDCommentEmptyLines = 1           " ** allow commenting and inverting **
let g:NERDToggleCheckAllLines = 1              " ** check all selected lines  **
"#######################################
"#               Tabular               #
"#######################################
let mapleader=','
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif

inoremap <silent> <Bar> <Bar><Esc>:call <SID>aling()<CR>a

function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' &&(getline(line('.')-1)
                            \ =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')], '[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],
        '.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column). '\s\{-\}' .repeat('.',position),
                                \ 'ce',line('.'))
    endif
endfunction
"#######################################
"#              NERDTree               #
"#######################################
map <C-n> :NERDTreeToggle<CR>                     " ** map a shortcut to open **
let g:NERDTreeDirArrowExpandable = '▸'           " ** change default arrow!!! **
let g:NERDTreeDirArrowCollapsible = '▾'
"######################################"
"             Vim-Airline              "
"######################################"
let g:airline#extensions#tabline#enabled = 1        " ** enable the extension **
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='badwolf'                   " ** load color scheme script **
let g:airline_powerline_fonts = 1          " ** enable powerline symbols font **
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'                             " ** unicode symbols **
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''                            " ** airline symbols **
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"#######################################
"#                 ctrlp               #
"#######################################
let g:ctrlp_map = '<c-p>'            " ** change the default mapping to ctrlp **
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'     " ** set its local working directory **
let g:ctrlp_switch_buffer = 'et'             " ** open it again in a new pane **
let g:ctrlp_user_command = [
                        \ '.git', 'cd %s && git ls-files -co--exclude-standard'
                        \ ]
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
    \ 'dir':    '\v[\/]\.(git|hg|svn)$',
    \ 'file':   '\v\.(exe|so|dll|mp3|mp4)$',
    \ 'link':   'some_bad_symbolic_links',
    \ }
"###############################################################################
" reload .vimrc
" Source the .vimrc or _vimrc file, depending on system
if &term == "win32" || "pcterm" || has("gui_win32")
	map ,v :e $HOME/_vimrc<CR>
	nmap <F11> :<C-u>source ~/_vimrc <BAR> echo "Reloading .vimrc!!!"<CR>
else
	map ,v :e $HOME/.vimrc<CR>
	nmap <F11> :<C-u>source ~/.vimrc <BAR> echo "Reloading .vimrc!!!"<CR>
endif
"###############################################################################

"#######################################
"#                Repeat               #
"#######################################
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
