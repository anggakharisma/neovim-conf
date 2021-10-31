source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/plugins.vim
source $HOME/.config/nvim/general/mappings.vim
source $HOME/.config/nvim/general/coc.vim

if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
  augroup END
endif

hi Comment cterm=italic

syntax on
colorscheme uwu


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
