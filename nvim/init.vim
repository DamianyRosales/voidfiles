source $HOME/.config/nvim/sets.vim
source $HOME/.config/nvim/pluggins.vim
source $HOME/.config/nvim/coc-config.vim

let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }

" require plugin configs
lua require('nyro')

if has('termguicolors')
    set termguicolors
endif

"source $HOME/.config/nvim/themes/onedarkpro.vim
source $HOME/.config/nvim/themes/everforest.vim
source $HOME/.config/nvim/remaps.vim

" --> Airline
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#tabline#formatter = 'jsformatter'
    let g:airline_powerline_fonts=1
    
