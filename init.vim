call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'fatih/vim-go'
let g:go_fmt_command = "goimports"
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
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeShowHidden=1
cnoreabbrev ntf NERDTreeFind
let NERDTreeShowLineNumbers=1

Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
Plug 'vim-airline/vim-airline-themes'

Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

Plug 'mileszs/ack.vim'
map <c-u> :Ack<space>
let g:ack_default_options = " -s -H --nocolor --nogroup --column --smart-case --follow"

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
cnoreabbrev fzf FZF
map <C-P> :FZF<CR>
let g:fzf_action = {
			\ 'ctrl-t': 'tab split',
			\ 'ctrl-x': 'split',
			\ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_colors =
			\ { 'fg':      ['fg', 'Normal'],
			\ 'bg':      ['bg', 'Normal'],
			\ 'hl':      ['fg', 'Comment'],
			\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
			\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
			\ 'hl+':     ['fg', 'Statement'],
			\ 'info':    ['fg', 'PreProc'],
			\ 'border':  ['fg', 'Ignore'],
			\ 'prompt':  ['fg', 'Conditional'],
			\ 'pointer': ['fg', 'Exception'],
			\ 'marker':  ['fg', 'Keyword'],
			\ 'spinner': ['fg', 'Label'],
			\ 'header':  ['fg', 'Comment'] }

Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'tomasr/molokai'
Plug 'plasticboy/vim-markdown'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'ekalinin/Dockerfile.vim'
Plug 'posva/vim-vue'
autocmd FileType vue syntax sync fromstart
Plug 'rhysd/vim-clang-format'
autocmd FileType proto ClangFormatAutoEnable
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'Yggdroot/indentLine'
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar = '●'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
Plug 'majutsushi/tagbar'
"brew install --HEAD universal-ctags/universal-ctags/universal-ctags
nmap <C-L> :TagbarToggle<CR>
"autocmd VimEnter * nested :TagbarOpen
"Plug 'ryanoasis/vim-devicons'
Plug 'dense-analysis/ale'
let g:ale_set_highlights = 0
"How can I change the signs ALE uses?
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'I'
"How can I navigate between errors quickly?
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"TODO Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%severity%] %s'

Plug 'dart-lang/dart-vim-plugin'

call plug#end()




syntax on
colorscheme molokai
let mapleader=","
set cursorcolumn
set cursorline
set nu
"set relativenumber
set clipboard=unnamed
set nobackup
set noswapfile
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set list lcs=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<
"set scrolloff=10
set autoread
imap jj <Esc>
nmap <leader>cd :cd %:p:h<CR>
" FIX hi for gitgutter
hi GitGutterAdd     ctermfg=2 ctermbg=236 cterm=bold
hi GitGutterChange  ctermfg=3 ctermbg=236 cterm=bold
hi GitGutterDelete  ctermfg=1 ctermbg=236 cterm=bold
" FIX hi for ale
hi error ctermfg=196 ctermbg=236 cterm=bold
hi Todo ctermfg=44 ctermbg=236 cterm=bold

highlight CursorColumn ctermbg=236
highlight CursorLine ctermbg=236
