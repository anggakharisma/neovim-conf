" set leader key
let g:mapleader = ","
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set textwidth=80
set wrap
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set background=dark                     " tell vim what the background color looks like

set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set number relativenumber
set nu rnu
"set autochdir                           " Your working directory will always
"be the same as your working directory
"
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm
"alternatively you can run :source $MYVIMRC
"
"" You can't stop me
cmap w!! w !sudo tee %

autocmd StdinReadPre * let s:std_in=1


command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'

if stridx(&runtimepath, expand(vimDir)) == -1
  " vimDir is not on runtimepath, add it
  let &runtimepath.=','.vimDir
endif

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif
let g:indentLine_char = '|'

let g:indentLine_setConceal = 0
let g:airline_symbols = {}

" highlight clear SignColumn
" set signcolumn=number

hi SignColumn guibg=NONE

let g:airline_left_sep = ''                                            
let g:airline_left_alt_sep = ''                                        
let g:airline_right_sep = ''                                           
let g:airline_right_alt_sep = ''                                       
let g:airline_symbols.branch = ''                                      
let g:airline_symbols.colnr = ' :'                                                                                                                                                                                
let g:airline_symbols.readonly = ''                                       
let g:airline_symbols.linenr = ' :'                                    
let g:airline_symbols.maxlinenr = '☰ '                          
let g:airline_symbols.dirty='⚡'

" Remove tilde line
set fillchars=eob:\ 

set foldmethod=syntax
setlocal foldlevelstart=99

set fillchars+=vert:\ 
 
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#ag(<q-args>, { 'options': ['--color', 'hl:#ff8787,hl+:#ff0000'] }, <bang>0)
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

set cursorline
hi CursorLine guibg=#063b42 guifg=NONE
hi Visual guibg=#095d68 guifg=NONE
hi VertSplit guifg=#013b4a guibg=#013b4a gui=NONE

hi Pmenu guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE
hi PmenuSel guibg=#60ff60 guifg=black ctermbg=NONE ctermfg=NONE
