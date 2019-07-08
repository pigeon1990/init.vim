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
Plug 'kana/vim-operator-user'
autocmd FileType proto ClangFormatAutoEnable

call plug#end()




imap jj <Esc>
set cursorcolumn
set cursorline
set nu
syntax on
set clipboard=unnamed
colorscheme molokai
let mapleader=","
set nobackup
set noswapfile
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set autochdir
nnoremap <leader>cd :cd %:p:h<CR>
set autoread
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab
