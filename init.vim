call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
let g:go_fmt_command = "goimports"
let g:go_rename_command = 'gopls'
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd FileType go nmap <leader>gt :GoDeclsDir<cr>
autocmd FileType go nmap <leader>gj :GoAddTags<cr>
autocmd FileType go nmap <leader>f :GoFmt<cr>
autocmd FileType go nmap <leader>q :GoIfErr<cr>
autocmd FileType go nmap <F12> <Plug>(go-def)

Plug 'scrooloose/nerdtree'
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
cnoreabbrev ntf NERDTreeFind

Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

Plug 'mileszs/ack.vim'
map <c-u> :Ack<space>
let g:ack_default_options = " -s -H --nocolor --nogroup --column --smart-case --follow"

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
cnoreabbrev fzf FZF
map <C-P> :FZF<CR>
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--layout=reverse'
let g:fzf_action = {
			\ 'ctrl-t': 'tab split',
			\ 'ctrl-x': 'split',
			\ 'ctrl-v': 'vsplit' }
" FIX indentLine json 文件不显示双引号的问题
" https://github.com/Yggdroot/indentLine/issues/140
Plug 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0
Plug 'Yggdroot/indentLine'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar = '●'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

Plug 'majutsushi/tagbar'
nmap <C-L> :TagbarToggle<CR>

Plug 'ryanoasis/vim-devicons'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['go'] = ''

Plug 'dense-analysis/ale'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
let g:ale_set_highlights = 0
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'I'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%severity%] %s'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'ekalinin/Dockerfile.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'triglav/vim-visual-increment'
Plug 'ervandew/supertab'

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
augroup autoformat_settings
  autocmd FileType proto AutoFormatBuffer clang-format
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType vue AutoFormatBuffer prettier
augroup END

Plug 'morhetz/gruvbox'
let g:gruvbox_contrast_dark='hard'

Plug 'plasticboy/vim-markdown'
let g:vim_markdown_conceal = 0

call plug#end()


syntax on
colorscheme gruvbox
let mapleader=","
imap jj <Esc>
nmap <leader>cd :cd %:p:h<CR>

set relativenumber
set cursorcolumn
set cursorline
set number
set nobackup
set nowritebackup
set noswapfile
set autoread
set scrolloff=10
set clipboard=unnamed
set list lcs=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

