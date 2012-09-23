" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    "Add your bundles here
    Bundle 'https://github.com/altercation/vim-colors-solarized.git'
    Bundle 'https://github.com/tpope/vim-fugitive'
    Bundle 'https://github.com/tpope/vim-surround.git'
    Bundle 'https://github.com/scrooloose/nerdtree.git'
    Bundle 'https://github.com/scrooloose/syntastic.git'
  
   "...All your other bundles... 

    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
    endif
" Setting up Vundle - the vim plugin bundler end	

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Settings for Solarized

filetype off
filetype plugin indent on
syntax enable
set background=light
set t_Co=16
colorscheme solarized 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Omnicomplete 

autocmd FileType css set omnifunc=csscomplete#CompleteCSS

