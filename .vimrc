" """""""""""""""""""""""
" TODO Add the SuperTab plugin and pathogen util
" http://www.vim.org/scripts/script.php?script_id=1643
" """""""""""""""""""""""
" if ! has("gui_running")
    set t_Co=256
" endif
:syntax enable
" feel free to choose :set background=light for a different style
:set background=dark
:colors peaksea 
:set number
:set numberwidth=2
:set ts=4 sts=4 sw=4 expandtab
" Usability options
" :set virtualedit=onemore         " allow for cursor beyond last character
:set history=1000                " Store a ton of history (default is 20)
:set backspace=indent,eol,start  " backspace for dummys
:set incsearch                   " find as you type search
:set hlsearch                    " highlight search terms
:set ignorecase                  " case insensitive search
:set smartcase                   " case sensitive when uc present
:set wildmenu                    " show list instead of just completing
:set wildmode=list:longest,full  " comand <Tab> completion, list matches,

:helptags ~/.vim/doc
" snipMate Plugin
:filetype plugin on

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1

""""""""""""""""""""""""""""""
" => Minibuffer plugin
""""""""""""""""""""""""""""""""
"let g:miniBufExplorerMoreThanOne = 2 
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplUseSingleClick = 1
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplVSplit = 20
let g:miniBufExplSplitBelow=0
"let g:bufExplorerSortBy = "name"
"autocmd BufRead,BufNew :call UMiniBufExplorer
"map <leader>u :TMiniBufExplorer<cr>:TMiniBufExplorer<cr>

" WinManager mappings
map <F2> :WMToggle<cr>

" NERDTree mappings
map <F3> :NERDTreeToggle<CR>

" SpellCheck
map <F4> :set spell!<CR>

" Wrap
map <F5> :set wrap!<CR>

" Window Mappings
map <C-J> <C-W>j<C-W>10+
map <C-K> <C-W>k<C-W>10+
map <C-L> <C-W>l<C-W>10+
map <C-H> <C-W>h<C-W>10+
map <C-K> <C-W>k<C-W>10+

" tab navigation like firefox
:nmap <Tab> :tabnext<CR>
:map <Tab> :tabnext<CR>
" :imap <Tab> <Esc>:tabnext<CR>i
:nmap <S-Tab> :tabprevious<CR>
:map <S-Tab> :tabprevious<CR>
" :imap <S-Tab> <Esc>:tabprevious<CR>i
:nmap <C-T> :tabe
:imap <C-T> <Esc>:tabe<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby set omnifunc=rubycomplete#Complete
" improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
" Hucks for SQL completion
let g:ftplugin_sql_omni_key = '<C-C>'

" Options for Ruby Completion
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ? "\<lt>C-n>" : "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" . "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" . "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
" inoremap <expr> <C-Space> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <C-Space> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" HOW TO REMAP COMMENTS TO CTRL-/ AND CTRL-S-/
inoremap ,c <C-o>:call NERDComment(0,"toggle")<C-m>
" map <Leader>c ,c<space>

" Fuzzy Finder 
map <Leader>tb :FufBuffer<CR>
map <Leader>tf :FufFile<CR>
map <Leader>td :FufDir<CR>
map <Leader>tmf :FufMruFile<CR>
map <Leader>tm :FufMruCmd<CR>
map <Leader>tb :FufBookmark<CR>
map <Leader>tt :FufTag<CR>
map <Leader>ttf :FufTaggedFile<CR>
map <Leader>tj :FufJumpList<CR>
map <Leader>tc :FufChangeList<CR>
map <Leader>tq :FufQuickfix<CR>
map <Leader>tl :FufLine<CR>
map <Leader>th :FufHelp<CR>


" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
 
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

