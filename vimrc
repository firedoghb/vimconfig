"runtime! debian.vim

" Not complete with Vi Mode
set nocompatible
set regexpengine=1

" Format 
set nu
set ts=4 "4
set shiftwidth=4 "4
set softtabstop=4 "4
" set expandtab
set autowrite
set display=lastline

set encoding=utf-8
set fileencoding=utf-8
setglobal fileencoding=utf-8
" set fileencodings=ucs-bom,utf-8,cp936
" set termencoding=utf-8

" For indent
set wrap
set autoindent
set smartindent
set smarttab
set cindent
set linebreak
set shiftround

" Search and Case
set gdefault
set hlsearch
set incsearch
set ignorecase
set showcmd
set whichwrap+=<,>

" Omni Complete Setting
set wildmenu
set wildmode=longest,full
set completeopt=menu,menuone,longest
set switchbuf=useopen,usetab
set shortmess=a

" No back up files 
set nobackup
set nowritebackup
set noswapfile

" Rule the define
set noshowmode
set ruler
set cursorline
set winaltkeys=no

" Advance config
set magic
set lazyredraw
set ttyfast
set hidden
"set autochdir
set autoread
"set showmatch
set laststatus=2
set cmdheight=1

" No surround sound
set noerrorbells
set novisualbell
set t_vb=

" Set Fold config
" set foldmethod=syntax
set foldenable

" misc settings
set fileformat=unix     " file mode is unix
set fileformats=unix,dos,mac

" Diff GUI Vim with NVim 
" Set No Top Menu and Scroll
if has("gui_running")  
    set guioptions-=e
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=B
    set guioptions-=0
    set go=
    set guitablabel=
    set paste
    set mousemodel=popup_setpos
    set mouse=a
else
    set t_Co=256
    set showtabline=2
    set noimd
  set ttimeoutlen=0
endif

" setting the tabs like that 
" set list listchars=tab:→\ ,trail:\ 
" set list listchars=tab:▸\ 
"set list listchars=tab:-\ ,trail:\ 
set list listchars=tab:▸\ ,extends:❯,precedes:❮

" -------------- Global Setting end ---------------

" ========================= Normal Setting End =========================  


" ========================= Vundle Plugin Manager =========================  

filetype off

" Vundle Config Manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" 标题栏
Plugin 'ap/vim-buftabline'
" DoxyGenToolKit注释
Bundle 'DoxygenToolkit.vim'

" @ Plugin --- [ Source Code Cheacker ]
Bundle "tagbar"
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'tpope/vim-fugitive'

" NERDTree Plugins Collections
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'

Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'jonathanfilip/lucius'

" @ Plugin --- [ |Google| Geeks Plugin ]
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-expand-region'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
" 快速查询
Plugin 'tpope/vim-abolish'
Plugin 'wombat256.vim'

" Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'justinmk/vim-sneak'
Plugin 'haya14busa/incsearch.vim'
Bundle "sickill/vim-monokai"
Plugin 'jellybeans.vim'
Plugin 'badwolf'
Bundle 'morhetz/gruvbox'
Bundle 'fatih/vim-go'

Bundle "code_complete"
Plugin 'Auto-Pairs'
Plugin 'matchit.zip'

Bundle 'Lokaltog/vim-powerline'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'dhruvasagar/vim-table-mode'

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'plasticboy/vim-markdown'

" ---- Plugin List Complete ----

call vundle#end()

syntax on
syntax enable

filetype on
filetype plugin on
filetype plugin indent on


set background=dark
" colorscheme jellybeans
colorscheme monokai
" colorscheme badwolf
" colorscheme gruvbox
" colorscheme wombat256mod
" colorscheme lucius

" ========================= Vundle Plugin Setup End ========================= 
"
let g:go_bin_path = expand("~/.gotools")
" powerline"
let g:Powerline_symbols = 'fancy'
let g:last_mode = 'n'

"nerdtree "
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_synchronize_view=1
let g:nerdtree_tabs_autofind=1
let g:NERDTreeWinSize=30
let g:NERDTreeIgnore = ['\.pyc', '\.o']

"tabbar"
let g:tagbar_width = 30

let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }
let g:tagbar_type_css = {
\ 'ctagstype' : 'Css',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 's:selectors',
        \ 'i:identities'
    \ ]
\ }

set cc=80
" doxygen
"DoxyGenToolKit.vim :
let g:DoxygenToolkit_briefTag_pre="@brief  " 
let g:DoxygenToolkit_paramTag_pre="@param " 
let g:DoxygenToolkit_returnTag="@returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="chenhanbing@corp.netease.com" 
let g:DoxygenToolkit_licenseTag="@Copyright."

" ctrlsf :
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_position = "left"

" ctrlsf :
let g:ctrlsf_ackprg = 'ag'
let g:ctrlsf_position = "left"

nmap <C-F> :CtrlSF <C-R>=expand("<cword>")<CR><CR>

" indentline
let g:indentLine_enabled=1

""CTRL + H        添加 / 删除注释
let NERDShutUp=1
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看
let mapleader=","

" Syntastic Config
let g:syntantic_cpp_compiler_options=' -std=c++11 -stdlib=libc++'

let g:syntastic_cpp_compiler = 'g++'
set statusline+=%#f1#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list            = 0
let g:syntastic_check_on_open            = 1
let g:syntastic_check_on_wq              = 1 

" let g:syntastic_debug = 1
" set Syntastic Cheacker engine 
" example JavaScript use JSHint [ NodeJS ]
" let g:syntastic_php_checkers        = ['php', 'phpcs', 'phpmd']
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_java_checkers       = ['java', 'jsp']
" let g:syntastic_c_checkers          = ['c', 'h']
" let g:syntastic_cpp_checkers        = ['gcc', 'clang_check']

let g:ycm_show_diagnostics_ui                           = 0
let g:ycm_cache_omnifunc                                = 1
let g:ycm_global_ycm_extra_conf                         = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf                            = 1
let g:ycm_add_preview_to_completeopt                    = 0
let g:ycm_min_num_of_chars_for_completion               = 1
let g:ycm_autoclose_preview_window_after_completion     = 1
let g:ycm_key_list_select_completion                    = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion                  = ['<c-p>', '<Up>']

let g:ycm_collect_identifiers_from_tags_files           = 1   " 开启 YCM 基于标签引擎
let g:ycm_seed_identifiers_with_syntax                  = 1   " 语法关键字补全
let g:ycm_complete_in_comments                          = 1   " 在注释输入中也能补全
let g:ycm_complete_in_strings                           = 1   " 在字符串输入中不能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0   " 注释和字符串中的文字也会被收入补全

let g:ycm_goto_buffer_command = 'horizontal-split' 
"[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_blacklist = {
            \ 'tagbar'    : 1,
            \ 'qf'        : 1,
            \ 'notes'     : 1,
            \ 'markdown'  : 1,
            \ 'unite'     : 1,
            \ 'text'      : 1,
            \ 'vimwiki'   : 1,
            \ 'gitcommit' : 1,
            \}


"" -> neocomplete with clang
" let g:neocomplete#enable_at_startup=1

    " if !exists('g:neocomplete#force_omni_input_patterns')
      " let g:neocomplete#force_omni_input_patterns = {}
    " endif
    " let g:neocomplete#force_overwrite_completefunc = 1
    " let g:neocomplete#force_omni_input_patterns.c =
          " \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
    " let g:neocomplete#force_omni_input_patterns.cpp =
          " \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
    " let g:neocomplete#force_omni_input_patterns.objc =
          " \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
    " let g:neocomplete#force_omni_input_patterns.objcpp =
          " \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'
    " let g:clang_complete_auto = 0
    " let g:clang_auto_select = 0
    " let g:clang_use_library = 1


" UltiSnips Config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger     = "<S-Tab>"
let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<leader><Tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" C++ Syntax HighLight
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1


" GitGutter Setting
let g:gitgutter_sign_column_always = 0 
let g:gitgutter_max_signs = 99999 

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Ack Settings
if executable('ag')
  let g:ackprg = "ag --nocolor --nogroup --column"
elseif executable('ack-grep')
  let g:ackprg = "ack-grep --nocolor --nogroup --column"
elseif executable('ack')
  let g:ackprg = "ack --nocolor --nogroup --column"
endif

" Multip Cursor 
" Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Vim incsearch
let g:vim_search_pulse_disable_auto_mappings = 1
let g:incsearch#auto_nohlsearch = 1

" --------  tags -----------------
set tags+=../tags

" --------- KeyMapping Config -----------

nnoremap <F4> :exec exists('syntax_on') ? 'syn off': 'syn on'<CR>

" Normal Key Map
nnoremap U :redo<CR>
nnoremap Q :q!<CR>
nnoremap W :w!<CR>

" Window VertSplit switcher
nnoremap <leader>h  <C-w>h
nnoremap <leader>hh <C-w>h
nnoremap <leader>j  <C-w>j
nnoremap <leader>jj <C-w>j
nnoremap <leader>k  <C-w>k
nnoremap <leader>kk <C-w>k
nnoremap <leader>l  <C-w>l
nnoremap <leader>ll <C-w>l

" Set as toggle foldcomment
set fdm=indent
set foldlevelstart=99
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" Fast searcher
" nnoremap z, :FZF --no-mouse .<CR>

nnoremap ' `
nnoremap ` '

" Cursor Moving
" good feature
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

cnoremap <A-j> <Down>
cnoremap <A-k> <Up>
cnoremap <A-h> <Left>
cnoremap <A-l> <Right>

" Buftabline Config
function! Bclose()
    let curbufnr = bufnr("%")
    let altbufnr = bufnr("#")

    if buflisted(altbufnr)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == curbufnr
        new
    endif

    if buflisted(curbufnr)
        execute("bdelete! " . curbufnr)
    endif
endfunction
" nnoremap <A-j> :bnext<CR>
" nnoremap <A-k> :bprev<CR>
" nnoremap <A-l> :bnext<CR>
" nnoremap <A-h> :bprev<CR>
nnoremap <C-x> :call Bclose()<CR>
" nnoremap <A-w> :bwipeout<CR>

" Check Vim Syntax name Fn
nnoremap <leader>w  :w!<CR>
nnoremap <leader>q  :q!<CR>

" first to copy files path
" copy path
nnoremap <silent> <leader>cp :let @+=expand("%:p")<CR>:echo "Copied current file
      \ path '".expand("%:p")."' to clipboard"<CR>

" Vundle keyfire
nnoremap <leader>vi :PluginInstall<CR>
nnoremap <leader>vu :PluginUpdate<CR>
" Smooth Scroll the terminal
nnoremap <silent> <C-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nnoremap <silent> <C-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>

" Multi Expand Region
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

map <C-h> :bprev<CR>
map <C-l> :bnext<CR>

" Incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map n <Plug>(incsearch-nohl-n)zzzv
map N <Plug>(incsearch-nohl-N)zzzv
map * <Plug>(incsearch-nohl-*)zzzv
map # <Plug>(incsearch-nohl-#)zzzv
map g* <Plug>(incsearch-nohl-g*)zzzv
map g# <Plug>(incsearch-nohl-g#)zzzv

map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
" show tagbar
function! s:ToggleNERDTreeAndTagbar()
    let w:jumpbacktohere = 1

    " Detect which plugins are open
    if exists('t:NERDTreeBufName')
        let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
        let nerdtree_open = 0
    endif
    let tagbar_open = bufwinnr('__Tagbar__') != -1

    " Perform the appropriate action
    if nerdtree_open && tagbar_open
        NERDTreeTabsClose
        TagbarClose
    elseif nerdtree_open
        TagbarOpen
    elseif tagbar_open
        NERDTreeTabsOpen
    else
        NERDTreeTabsOpen
        TagbarOpen
    endif

    " Jump back to the original window
    for window in range(1, winnr('$'))
        execute window . 'wincmd w'
        if exists('w:jumpbacktohere')
            unlet w:jumpbacktohere
            break
        endif
    endfor
endfunction

" au VimEnter * : call s:ToggleNERDTreeAndTagbar()
au VimEnter * : TagbarOpen
