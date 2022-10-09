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

" --> Everforest config
    set background=dark
    let g:everforest_background = 'hard'
    let g:everforest_better_performance = 1
    let g:everforest_enable_italic=1
    let g:everforest_transparent_background=2
    let g:everforest_sign_column_background='none'
    let g:everforest_spell_foreground='colored'
    let g:everforet_ui_contrast='high'
    let g:everforest_diagnostic_text_highlight=1
    let g:everforest_diagnostic_line_highlight=1
    let g:everforest_diagnostic_virtual_text='colored'
    let g:everforest_current_word='italic'
    let g:airline_theme = 'everforest'


colorscheme everforest
source $HOME/.config/nvim/remaps.vim

" --> Airline
    let g:airline#extensions#tabline#enabled=1
    let g:airline#extensions#tabline#formatter = 'jsformatter'
    let g:airline_powerline_fonts=1
    
