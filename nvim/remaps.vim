
let g:mapleader="\<Space>"
"remaps

" --> NERDTree

    nnoremap <C-n> :NERDTree<CR>
    nnoremap <C-t> :NERDTreeToggle<CR>
    nnoremap <C-f> :NERDTreeFind<CR>

    let NERDTreeShowHidden=1

    autocmd VimEnter * NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Go to next tab and previous tab
    
    nnoremap <C-e> :bnext<CR>
    nnoremap <C-q> :q!<CR>

" Close current tab
    nnoremap <C-x> :bd<CR>
    
" Save file
    nnoremap <C-s> :w<CR>
" Quit
    nnoremap <C-z> :tabnew<CR>

" TELESCOPE

" Using Lua functions
    nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
    nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
    nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
    nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
