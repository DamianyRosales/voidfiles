
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
