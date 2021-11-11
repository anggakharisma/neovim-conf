call plug#begin('~/.vim/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'pangloss/vim-javascript'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'chemzqm/vim-jsx-improve'
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
  Plug 'yaegassy/coc-blade-formatter', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-emmet', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
  Plug 'marlonfan/coc-phpls', {'do': 'yarn install --frozen-lockfile'}
  Plug 'iamcco/coc-tailwindcss', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
  Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
  Plug 'iamcco/coc-flutter', {'do': 'yarn install --frozen-lockfile'}
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'hankchiutw/flutter-reload.vim'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'Neevash/awesome-flutter-snippets'
  Plug 'Yggdroot/indentLine'
  Plug 'thosakwe/vim-flutter'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'joshdick/onedark.vim'
  Plug 'mangeshrex/uwu.vim'
  Plug 'evanleck/vim-svelte', {'branch': 'main'}
  Plug 'lifepillar/vim-solarized8'
call plug#end()
