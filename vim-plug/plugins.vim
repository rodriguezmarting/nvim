" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  Plug 'preservim/nerdcommenter'
  " Have the file system follow you around
  Plug 'airblade/vim-rooter'
  " auto set indent settings
  Plug 'tpope/vim-sleuth'
  " Text Navigation
  Plug 'justinmk/vim-sneak'
  Plug 'unblevable/quick-scope'
  " Add some color
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'junegunn/rainbow_parentheses.vim'
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " Cool Icons
  Plug 'ryanoasis/vim-devicons'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'
  " Closetags
  Plug 'alvan/vim-closetag'
  " Themes
  Plug 'christianchiarulli/onedark.vim'
  " Intellisense
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Status Line
  Plug 'vim-airline/vim-airline'
  " Ranger
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Git
  " Plug 'mhinz/vim-signify'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Clojure syntax
  Plug 'guns/vim-clojure-static'
  " Sexp manipulation
  Plug 'guns/vim-sexp'
  " Clojure REPL
  Plug 'tpope/vim-fireplace'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " See what keys do like in emacs
  Plug 'liuchengxu/vim-which-key'
  " Zen mode
  Plug 'junegunn/goyo.vim'
  " Making stuff
  Plug 'neomake/neomake'
  " Snippets TODO fix TAB hijack
  " Plug 'SirVer/ultisnips'
  " Better Comments
  " Plug 'jbgutierrez/vim-better-comments'
  " Echo doc
  " Plug 'Shougo/echodoc.vim'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
