syntax on
filetype plugin on
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete

set exrc
set clipboard=unnamedplus
set guicursor=i:ver100-iCursor
set laststatus=2
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nohlsearch
set list
set nowrap
set undofile
set relativenumber
set noswapfile
set scrolloff=10
set signcolumn=yes
set backspace=indent,eol,start
set wildmenu
set termguicolors
set cmdheight=2
set encoding=utf8
set cursorline 
hi CursorLine term=bold cterm=bold guibg=Grey40

"Key Mappings
inoremap fj <Esc>
cnoremap jf <Esc>

"Map Leader
let mapleader = ","

"Auto close
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"Better window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"Easier Navigation in Insert mode
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"Open terminal with vertical split
nnoremap ter <C-w><C-v> <C-w>l :term<cr> <S-a>
"Close terminal
tnoremap etr <C-\><C-n> :q<cr>

" Quickly insert an empty new line without entering insert mode
nnoremap <leader>o o<esc>
nnoremap <leader>o o<esc>

"Indentation
nnoremap <Tab>   >>
nnoremap <S-Tab> <<
vnoremap <Tab>   >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv

" Split faster
nnoremap <leader>\ :vs<CR>
nnoremap <leader>- :sp<CR>

" Normal Key Map
nnoremap U :redo<CR>
nnoremap Q :q!<CR>
nnoremap W :w!<CR>

" settings for resize splitted window
nmap w[ :vertical resize -3<CR>
nmap w] :vertical resize +3<CR>

" Buftabline Config Manager
nnoremap <leader>l :bnext<CR>
nnoremap <leader>h :bprev<CR>
nnoremap <leader>x :bdelete<CR>

" Smooth Scroll the terminal
" nnoremap <silent> <C-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" nnoremap <silent> <C-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>

nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

"Plugins"
call plug#begin('~/AppData/Local/nvim/plugged')

"Airline Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rakr/vim-one'
Plug 'dylanaraps/wal.vim'
Plug 'mhartington/oceanic-next'
Plug 'wadackel/vim-dogrun'
Plug 'arzg/vim-colors-xcode'
Plug 'altercation/vim-colors-solarized'
Plug 'navarasu/onedark.nvim'
Plug 'gerardbm/vim-atomic'
Plug 'arcticicestudio/nord-vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
"Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"NerdTree
Plug 'scrooloose/nerdtree'

"Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'


Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

"Commenting
Plug 'tpope/vim-commentary'

"Indentation guide
Plug 'Yggdroot/indentLine'


Plug 'mhinz/vim-startify'

call plug#end()


" Airline settings
let g:airline_theme                       = 'gruvbox'
let g:airline_powerline_fonts             = 1
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_z                   = airline#section#create([
            \ '%1p%%',
            \ 'Ξ%l%\/%L',
            \ ':%c'])
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
set t_Co=256


let g:gruvbox_italic=1
let g:gruvbox_improved_strings=1
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_contrast_dark='softer'
let g:onedark_style = 'cool'
let g:gruvbox_transparent_bg=1

"Indetation
let g:indentLine_char_list = ['|', '¦']

"Theme settings

" AtomicNightRedSoft
" AtomicDarkBlueSoft
" AtomicDarkBlueHard
" AtomicDarkCyanSoft
" AtomicDarkCyanHard
" AtomicNightOrangeSoft
" AtomicNightOrangeHard
" AtomicNightRedSoft
" AtomicNightRedHard
" AtomicLightSoft
" AtomicLightHar

" colorscheme onedark
" colorscheme atomic
" colorscheme nord
" colorscheme solarized
colorscheme gruvbox
" colorscheme dracula
" colorscheme dogrun
" colorscheme xcodedarkhc
" colorscheme one
" colorscheme OceanicNext
" colorscheme wal


"Telescope Keymaps
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


" NERDTree Mappings & Settings
let g:NERDTreeIgnore = ['^node_modules$']

augroup NerdTreeSettings
  autocmd! 
  autocmd VimEnter * NERDTree "opens NerdTree when vim starts
  autocmd VimEnter * wincmd p "sets to Prev Window
  autocmd FileType nerdtree setlocal relativenumber
augroup END

let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "m",
    \ "Staged"    : "s",
    \ "Untracked" : "u",
    \ "Renamed"   : "r",
    \ "Unmerged"  : "u",
    \ "Deleted"   : "d",
    \ "Dirty"     : "m",
    \ "Clean"     : "c",
    \ 'Ignored'   : 'i',
    \ "Unknown"   : "?"
    \ }


"NERDTree Key Mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"coc
let g:coc_global_extensions=['coc-css', 'coc-emmet', 
            \'coc-html', 'coc-html-css-support', 
            \'coc-json', 'coc-tailwindcss', 'coc-tsserver']

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif


nnoremap <silent> K :call CocAction('doHover')<CR>

" Close all buffers except current one
function! CloseAllBuffersButCurrent()
  let curr = bufnr("%")
  let last = bufnr("$")

  if curr > 1    | silent! execute "1,".(curr-1)."bd"     | endif
  if curr < last | silent! execute (curr+1).",".last."bd" | endif
endfunction

nmap <Leader>\c :call CloseAllBuffersButCurrent()<CR>

"For startify
let g:startify_custom_header = [
\ '   _   _        _  _            __      __   _    _   ____   _ ',
\ '  | | | |  ___ | || |  ___     |   \  /   | | |  | | |    | | |',
\ '  | |_| | / _ \| || | / _ \    | |\ \/ /| | | |  | | | | _| | |',
\ '  |  _  ||  __/| || || (_) |   | | \  / | | | |__| | |   \  | |',
\ '  |_| |_| \___||_||_| \___/    |_|  \/  |_| \______/ |_|\_\ |_|' ,
\ '  ',
\ '  ',
\]
let g:user_emmet_leader_key='<Tab>'
