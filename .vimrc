
set rnu
set nu
let mapleader=","
set timeout timeoutlen=1500
set tabstop=4
set shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set encoding=UTF-8
set noshowmode
set spell
set spelllang=en_us

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

syntax on
set mouse=a

call plug#begin('~/.vim/plugged')
Plug 'wikitopian/hardmode'
Plug 'tclem/vim-arduino'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
Plug 'KabbAmine/vCoolor.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'mfussenegger/nvim-dap'
Plug 'puremourning/vimspector'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-fugitive'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'brennier/quicktex'                             
Plug 'raimondi/delimitmate'                         
Plug 'edkolev/tmuxline.vim'                              
Plug 'liuchengxu/vim-which-key'
Plug 'majutsushi/tagbar'                                          
Plug 'scrooloose/nerdcommenter'                                  
Plug 'christoomey/vim-tmux-navigator'                            
Plug 'preservim/nerdcommenter'                                  
Plug 'vim-airline/vim-airline'                                   
Plug 'christoomey/vim-system-copy'                                
Plug 'frazrepo/vim-rainbow'                                  
Plug 'lervag/vimtex'                                             
Plug 'airblade/vim-gitgutter'                                    
Plug 'editorconfig/editorconfig-vim'                             
Plug 'preservim/nerdcommenter'                                   
Plug 'junegunn/fzf'                                                
Plug 'junegunn/fzf.vim'                                         
Plug 'mattn/emmet-vim'                                            
Plug 'neomake/neomake'                                          
Plug 'scrooloose/nerdtree'                                        
Plug 'terryma/vim-multiple-cursors'                               
Plug 'tpope/vim-eunuch'                                         
Plug 'tpope/vim-surround'                                         
Plug 'lervag/vimtex'                                              
Plug 'francoiscabrol/ranger.vim'                                  
Plug 'ilyachur/cmake4vim'                                         
Plug 'easymotion/vim-easymotion'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'jez/vim-superman'
"Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'BrandonRoehl/auto-omni'
" Plug 'valloric/youcompleteme'
"Plug 'itchyny/lightline.vim'                                    
" Plug 'dense-analysis/ale'
""Plug 'codota/tabnine-vim'
""Plug 'zxqfl/tabnine-vim'
""Plug 'yggdroot/indentline'
"Plug 'glepnir/galaxyline.nvim'
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
call plug#end()

"-----------------------------------------------------------------------------------------"
"JK ycm first 2 and coc others
"-----------------------------------------------------------------------------------------"

let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<C-j>'
" let g:coc_snippet_next = '<c-j>'
" let g:coc_snippet_next = '<\C-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<C-k>'
" let g:coc_snippet_prev = '<c-k>'
" let g:coc_snippet_prev = '<\C-k>'
"
"TAB"

inoremap <silent><expr> <tab>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<tab>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
"

"Latex-------------------------------------------------------                       
let g:Tex_MultipleCompileFormats = 'pdf'                                                               
let g:Tex_DefaultTargetFormat = 'pdf'                                                                            
let g:tex_flavor='latex'                                                                                                  
let g:vimtex_view_method='zathura'                                                                                         
let g:vimtex_quickfix_mode=0                                                                                              
set conceallevel=1                                                                                                        
let g:tex_conceal='abdmg'                                                                                                
nnoremap <silent> <space>ll :wa <CR> :VimtexCompile<CR>

""let g:UltiSnipsSnippetDirectories=[“UltiSnips”, “UltiSnips”].vim/UltiSnips
""let g:UltiSnipsSnippetDirectories=[“UltiSnips”, “mycoolsnippets”]
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/Documents/.a/snippets/']



""Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<C-tab>'
    let g:UltiSnipsJumpForwardTrigger = '<C-tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<S-tab>'

""Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0

""Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"------------------------------------------------------------    
"key
nnoremap <space>x :wa<cr>
nnoremap <space>z :xa<cr>
nnoremap <leader>z :xa<cr>
nnoremap <space>q :wq<cr>
nnoremap <nowait><space>s :wa<cr>
nnoremap <space>0 :q!<cr>
imap <nowait><space> <space>
nnoremap \ 0
vmap 1 0
nnoremap 0 $
vmap 0 $
nnoremap <)> <(>
vmap <)> <(>
nnoremap <(> <)>
vmap <(> <)>
nnoremap <C-)> <C-(>
vmap <C-)> <C-(>
nnoremap <C-(> <C-)>
vmap <C-(> <C-)>
nnoremap <C-t> <Nop>
nnoremap <C-y> <Nop>
"there's a problem, it is slow"
nnoremap <C-t> <C-d>
nnoremap <nowait><space>u <C-d>
" nnoremap <C-y> <C-d>
"------------------------------------------------------------    
"------------------------------------------------------------    
"HardMode"
" autocmd VimEnter * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
"------------------------------------------------------------    
"------------------------------------------------------------    
nnoremap <space>1 :w <CR> :!gcc -g % -o %< && ./%< <CR>
nnoremap <space>C :w <CR> :tabe term://gcc -g % -o %< && ./%< <CR>
nnoremap <space>P :wa <CR> :!python3 % <CR>
" map <space>J :wa <CR> :!javac % && java % <CR>
nnoremap <space>J :wa <CR> :!javac % && java %< <CR>
nnoremap <space>2 :wa <CR> :tabe term://javac % && java %< <CR>
map! <F4> :!./%< 
map <F5> :w <CR> :!gcc -g % -o %< <CR>
" map <space>co :w <CR> :!gcc -g % -o %< <CR>
map <F7> :w  <CR> :packadd termdebug <CR>
autocmd filetype c nnoremap <F6> :Termdebug %:r<CR><c-w>2j<c-w>L
" autocmd filetype c nnoremap <space>ma make  :e  %:r<CR><c-w>2j<c-w>L
" autocmd filetype c nnoremap <space>cd :packadd termdebug <CR> :Termdebug %:r<CR><c-w>2j<c-w>L
nnoremap <space>te :below vertical terminal <CR> 
nnoremap <space>tr :NERDTreeToggle <CR> 
nnoremap <space>v :bn <CR>
nnoremap <leader>. :bn <CR>
nnoremap <nowait><space>d :bd <CR>
nnoremap <tab>  :BTags <CR>
nnoremap <space>y :Tagbar <CR>
"------------------------------------------------------------                   
nnoremap <space>f :Files <CR>
nnoremap <space>l :Lines <CR>
nnoremap <space>k :BCommits <CR>
nnoremap <space>b :tabe <CR>
nnoremap <space>w :vsp <CR>
""------------------------------------------------------------                   
nnoremap <space>G :! git add * <CR> ! git commit -m "%" <CR> ! git push <CR>
nnoremap <leader>e :!cat % <CR>
nnoremap <space>M :wa <CR> :! make <CR>
nnoremap <space>n :wa <CR> :! make <CR>
nnoremap <M-v> :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./%< <CR>
"" noremap <space>V :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./%< <CR>
nnoremap <space>r :RangerNewTab <CR>
nnoremap <leader>n :noh <CR>
nnoremap <space>ò :noh <CR>
"-----------------------------------------------------------------------------------------------------"
imap <M-b> public class First {<CR>public static void main(String[] args) {<CR>System.out.println("Hello OOP!");<CR>}<CR>} 
"Makefile---------------------------------------------------------------------------------------------"
noremap <M-m> :e %:h/Makefile<CR>
imap <M-j> compile:<CR>javac %.java && java %
noremap <M-g> :wa <CR> :!javac % && java %< <CR>
"------------------------------------------------------------                   
vmap <C-C> "+y                                                                                                         
"------------------------------------------------------------                   
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left> 
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
                                              
"tmux   
set background=dark   
set t_Co=256         
"                                                       
noremap <silent> <leader> :WhichKey '<Space>'<CR>
" noremap <silent> <leader> :WhichKey '<Space>'<CR>

highlight Cursor guifg=white guibg=black                                             
highlight iCursor guifg=white guibg=steelblue        

set cursorline
tnoremap <Esc> <C-\><C-n>:q!<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-c> <C-\><C-n>:q!<CR>
tnoremap <C-c> <C-\><C-n>
"------------------------------------------------------------                   
"------------------------------------------------------------                   
"------------------------------------------------------------                   
"------------------------------------------------------------                   
"------------------------------------------------------------                   
let g:rainbow_active = 1                                                                                                
""set colorcolumn=80                                                                                                        
set textwidth=80                                                                                                          

""let g:indentLine_setColors = 0
""set IndentLinesDisable
                                                                                                                          
" map <Tab> <C-W>
set tabstop=4                                                                                   

"PLUGINS                                                                                         
" set rtp+=~/.vim/PLUGVIM/tabnine-vim
                                   
syntax enable                                                                                                                   
set background=dark                                                                                                            
colorscheme gruvbox                                                                                      
                                                                                                                              
set mouse=a                                                                                                       
set go+=a                                                                         
let g:system_copy#copy_command='xclip -sel clipboard'                                                               
                                                                                                 
let g:airline_theme='gruvbox'                                               
let g:airline_powerline_fonts = 1                                                     
let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD      
                                                                                                               
"TABLINE:                                                          
                                                             
let g:airline#extensions#tabline#enabled = 1           " enable airline tabline                             
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline                            
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown) 
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown) 
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab                 
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right         
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline                           
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline                      
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline 
let g:airline#extensions#tabline#show_tab_nr = 1       " disable tab numbers                                                     
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline                        
                                                                                                                              
set laststatus=2                                                                                                     
                                                                                                                   
let NERDTreeShowHidden=1                                                                                                     

"nerd commenter                                                                                                           
"                                                                                                                                     
" Create default mappings                                                                                                     
let g:NERDCreateDefaultMappings = 1                                                                               
" Add spaces after comment delimiters by default                                                                              
let g:NERDSpaceDelims = 1                                                                           
" Use compact syntax for prettified multi-line comments                                                         
let g:NERDCompactSexyComs = 1                                                                                            
" Align line-wise comment delimiters flush left instead of following code indentation                                
let g:NERDDefaultAlign = 'left'                                                                         
" Set a language to use its alternate delimiters by default                                                           
let g:NERDAltDelims_java = 1                                                                
" Add your own custom formats or override the defaults                                                           
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }                                    
" Allow commenting and inverting empty lines (useful when commenting a region)                          
let g:NERDCommentEmptyLines = 1                                                                                 
" Enable trimming of trailing whitespace when uncommenting                                             
let g:NERDTrimTrailingWhitespace = 1                                                                  
" Enable NERDCommenterToggle to check all selected lines is commented or not                          
let g:NERDToggleCheckAllLines = 1                                                              
let mapleader=","                                                                                          
set timeout timeoutlen=1500                                                                                    

"--------------------------------------------------------------------------------------------"
"coc"
"
"
" " coc config
" let g:coc_global_extensions = [
"   \ 'coc-snippets',
"   \ 'coc-pairs',
"   \ 'coc-tsserver',
"   \ 'coc-eslint',
"   \ 'coc-prettier',
"   \ 'coc-json',
  " \ ]
"
"" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-j>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-k>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" " Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif
"
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>aa  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>ee  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>cc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>oo  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>ss  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>jj  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent><nowait> <space>kk  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>pp  :<C-u>CocListResume<CR>

nnoremap <nowait><space>e :CocCommand explorer<CR>
"-------------------------------------------------------------------------------------------------------------------"
" let g:vimspector_enable_mappings = 'HUMAN'
" nnoremap <space>du :call vimspector#Launch()<CR>
" nnoremap <space>dx :VimspectorReset<CR>
" nnoremap <space>de :VimspectorEval
" nnoremap <space>dw :VimspectorWatch
" nnoremap <space>do :VimspectorShowOutput
" let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]
"-----------------------------------------------------------------------------------------------------"
"Toggle terminal"
let g:term_buf = 0
let g:term_win = 0

function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction


nnoremap <nowait> <space>t :call Term_toggle(10)<cr>
tnoremap <space>t <C-\><C-n>:call Term_toggle(10)<cr>
" tnoremap <space>r :bd!<cr>
" tnoremap <space>d :bd<cr>

" noremap <M-x> :wa <CR> :tabe term://make<CR>
noremap <space>m  :wa <CR> <C-\><C-n>:tabe term://make<CR>
nnoremap <silent> <leader>m :wa <CR> :LazyGit<CR>
nnoremap <silent> <space>g :wa <CR> :LazyGit<CR>

"-----------------------------------------------------------------------------------------------------"
"Easy-motions"
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"-----------------------------------------------------------------------------------------------------"

"&= =0&= &= &= &= &= &= &= &= &= &= &=&=&= &= &= &= &= &= &= = \\ \\ \\ \\ \\ \\ \\  \\  \\ \\ \\ \\= \\ \\ \\ \\ \\ \\ \\ \\==
"&= =0&= &= &= &= &= &= &= &= &= &= &=&=&= &= &= &= &= &= &= = \\ \\ \\ \\ \\ \\ \\  \\  \\ \\ \\ \\= \\ \\ \\ \\ \\ \\ \\ \\==
"&= =0&= &= &= &= &= &= &= &= &= &= &=&=&= &= &= &= &= &= &= = \\ \\ \\ \\ \\ \\ \\  \\  \\ \\ \\ \\= \\ \\ \\ \\ \\ \\ \\ \\==
"&= =0&= &= &= &= &= &= &= &= &= &= &=&=&= &= &= &= &= &= &= = \\ \\ \\ \\ \\ \\ \\  \\  \\ \\ \\ \\= \\ \\ \\ \\ \\ \\ \\ \\==
"&= =0&= &= &= &= &= &= &= &= &= &= &=&=&= &= &= &= &= &= &= = \\ \\ \\ \\ \\ \\ \\  \\  \\ \\ \\ \\= \\ \\ \\ \\ \\ \\ \\ \\==
"&= =0&= &= &= &= &= &= &= &= &= &= &=&=&= &= &= &= &= &= &= = \\ \\ \\ \\ \\ \\ \\  \\  \\ \\ \\ \\= \\ \\ \\ \\ \\ \\ \\ \\==
"
"

"OLD    CONFIGURATION

" "call plug#begin('~/local/share/vim/plugged')
"
" "call plug#end()
" filetype plugin on
" set omnifunc=syntaxcomplete#Complete
"
"
" " When started as "evim", evim.vim will already have done these settings.
" if v:progname =~? "evim"
"   finish
" endif
"
" " Use Vim settings, rather than Vi settings (much better!).
" " This must be first, because it changes other options as a side effect.
" " Avoid side effects when it was already reset.
" if &compatible
"   set nocompatible
" endif
"
" " When the +eval feature is missing, the set command above will be skipped.
" " Use a trick to reset compatible only when the +eval feature is missing.
" silent! while 0
"   set nocompatible
" silent! endwhile
"
" " Allow backspacing over everything in insert mode.
" set backspace=indent,eol,start
"
" "set ai			" always set autoindenting on
" "set backup		" keep a backup file
" set viminfo='20,\"50	" read/write a .viminfo file, don't store more
"             " than 50 lines of registers
" set history=50		" keep 50 lines of command line history
" set ruler		" show the cursor position all the time
" set showcmd		" display incomplete commands
" set wildmenu		" display completion matches in a status line
"
" set ttimeout		" time out for key codes
" set ttimeoutlen=100	" wait up to 100ms after Esc for special key
"
" " Show @@@ in the last line if it is truncated.
" set display=truncate
"
" " Show a few lines of context around the cursor.  Note that this makes the
" " text scroll if you mouse-click near the start or end of the window.
" set scrolloff=5
"
" " Do incremental searching when it's possible to timeout.
" if has('reltime')
"   set incsearch
" endif
"
" " Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" " confusing.
" set nrformats-=octal
"
" " Only do this part when compiled with support for autocommands
" if has("autocmd")
"   augroup fedora
"   autocmd!
"   " In text files, always limit the width of text to 78 characters
"   " autocmd BufRead *.txt set tw=78
"   " When editing a file, always jump to the last cursor position
"   autocmd BufReadPost *
"   \ if line("'\"") > 0 && line ("'\"") <= line("$") |
"   \   exe "normal! g'\"" |
"   \ endif
"   " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
"   autocmd BufNewFile,BufReadPre /media/*,/run/media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp
"   " start with spec file template
"   " 1724126 - do not open new file with .spec suffix with spec file template
"   " apparently there are other file types with .spec suffix, so disable the
"   " template
"   " autocmd BufNewFile *.spec 0r /usr/share/vim/vimfiles/template.spec
"   augroup END
" endif
"
" if has("cscope") && filereadable("/usr/bin/cscope")
"    set csprg=/usr/bin/cscope
"    set csto=0
"    set cst
"    set nocsverb
"    " add any database in current directory
"    if filereadable("cscope.out")
"       cs add $PWD/cscope.out
"    " else add database pointed to by environment
"    elseif $CSCOPE_DB != ""
"       cs add $CSCOPE_DB
"    endif
"    set csverb
" endif
"
" " Switch syntax highlighting on, when the terminal has colors
" " Also switch on highlighting the last used search pattern.
" if &t_Co > 2 || has("gui_running")
"   " Revert with ":syntax off".
"   syntax on
"
"   " I like highlighting strings inside C comments.
"   " Revert with ":unlet c_comment_strings".
"   let c_comment_strings=1
"   set hlsearch
" endif
"
" filetype plugin on
"
" if &term=="xterm"
"      set t_Co=8
"      set t_Sb=m
"      set t_Sf=m
" endif
"
" " Convenient command to see the difference between the current buffer and the
" " file it was loaded from, thus the changes you made.
" " Only define it when not defined already.
" " Revert with: ":delcommand DiffOrig".
" if !exists(":DiffOrig")
"   command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
"           \ | wincmd p | diffthis
" endif
"
" if has('langmap') && exists('+langremap')
"   " Prevent that the langmap option applies to characters that result from a
"   " mapping.  If set (default), this may break plugins (but it's backward
"   " compatible).
"   set nolangremap
" endif
"
" " Don't wake up system with blinking cursor:
" let &guicursor = &guicursor . ",a:blinkon0"
"
" " Source a global configuration file if available
" if filereadable("/etc/vimrc.local")
"   source /etc/vimrc.local
" endif
"
" "set number
" "set rnu
" "------------------------------------------------------------
" "Plugin
" "Plugin 'lervag/vimtex'
"
"
"
"
"
"
"
"
" "------------------------------------------------------------
" " VimTEX
" "
" "map <F3> :w | make %<CR><CR>
" "
" "
" "
" let g:Tex_MultipleCompileFormats = 'pdf'
" let g:Tex_DefaultTargetFormat = 'pdf'
"
" "Plug 'lervag/vimtex'
" let g:tex_flavor='latex'
" let g:vimtex_view_method='zathura'
" let g:vimtex_quickfix_mode=0
" set conceallevel=1
" let g:tex_conceal='abdmg'
" "------------------------------------------------------------
" "
" "
" map <F8> :w <CR> :!gcc -g % -o %< && ./%< <CR>
" "map <F9> :w <CR> :!./%< <CR>
" "map <F4> :w <CR> :!gcc -g % -o %< && ./%<
" "map! <F4> :!./%<
"
"
" map <F5> :w <CR> :!gcc -g % -o %< <CR>
" map <F7> :w  <CR> :packadd termdebug <CR>
"
" "map! <F4> :ciao
" " <CR> include <stdlib.h> <CR> include     <string.h> <CR> int main() <CR> { <CR>       printf(" \n"); <CR>     scan    f("%", &); <CR> return 0; <CR> }  <ESC>
"
" autocmd filetype c nnoremap <F6> :Termdebug %:r<CR><c-w>2j<c-w>L
"
"
" "------------------------------------------------------------
" "Open a terminal
" "
" map <F2> :below vertical terminal<CR>
"
"
" "------------------------------------------------------------
" "Open explore
" "
"
"
" "------------------------------------------------------------
" "TREE
" "
" map <F10> :NERDTree <CR>
" "------------------------------------------------------------
" "Maps hjkl to u-hjk"
" "noremap l k
" "noremap k j
" "noremap j u
" "noremap h h
" "
" "
" "
" "
" "Plug in
"
" " Install and run vim-plug on first run
" "if empty(glob('~/.vim/autoload/plug.vim'))
"  "   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"   "  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"    " autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" "endif
"
"
" "call plug#begin('~/.vim/plugged')
" "Plug 'lervag/vimtex'
" "Plug 'airblade/vim-gitgutter'
" "Plug 'editorconfig/editorconfig-vim'
" "Plug 'itchyny/lightline.vim'
" "Plug 'junegunn/fzf'
" "Plug 'junegunn/fzf.vim'
" "Plug 'mattn/emmet-vim'
" "Plug 'scrooloose/nerdtree'
" "Plug 'terryma/vim-multiple-cursors'
" "Plug 'tpope/vim-eunuch'
" "Plug 'tpope/vim-surround'
" "Plug 'frazrepo/vim-rainbow'
" "call plug#end()
"
" "au FileType c,cpp,objc,objcpp call rainbow#load()
"
"
" so ~/.vim/plugins.vim
"
" "autocmd VimEnter * vsplit
" "autocmd VimEnter * ver res -5
" "autocmd VimEnter * bel ter
" "autocmd VimEnter * vert bel ter
" "autocmd VimEnter * vert res 53
" "autocmd VimEnter * res -12 "per horiz bel ter
"
"
" "autocmd VimEnter * <C-w> <W>
" "autocmd VimEnter * vsplit
" "autocmd VimEnter * vertical resize  80
"
" " autocmd VimEnter * NERDTree
" " autocmd VimEnter * vert res 20
" let g:rainbow_active = 1
"
" "autocmd VimEnter * Vex
" "autocmd VimEnter * vert res 20
"
"
" set colorcolumn=80
" set textwidth=80
"
"
" map <Tab> <C-W>
"
" set tabstop=4
"
" "PLUGINS
" set rtp+=~/.vim/PLUGVIM/tabnine-vim
"
"
" "autocmd VimEnter * tabnew
" "
" "
"
" call plug#begin('~/.vim/plugged')
" Plug 'lervag/vimtex'
" Plug 'francoiscabrol/ranger.vim'
" Plug 'ilyachur/cmake4vim'
" call plug#end()
"
"
" syntax enable
" set background=dark
" colorscheme gruvbox
"
" set mouse=a
" set go+=a
" vmap <C-C> "+y
" let g:system_copy#copy_command='xclip -sel clipboard'
"
" let g:airline_theme='gruvbox'
" let g:airline_powerline_fonts = 1
" let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD
"
" "TABLINE:
"
" let g:airline#extensions#tabline#enabled = 1           " enable airline tabline
" let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
" let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
" let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
" let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
" let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
" let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
" let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
" let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
" let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers
" let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline
"
" set laststatus=2
"
" let NERDTreeShowHidden=1
"
"
" "nerd commenter
" "
" " Create default mappings
" let g:NERDCreateDefaultMappings = 1
"
" " Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1
"
" " Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1
"
" " Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'
"
" " Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1
"
" " Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
" " Allow commenting and inverting empty lines (useful when commenting a region)
" let g:NERDCommentEmptyLines = 1
"
" " Enable trimming of trailing whitespace when uncommenting
" let g:NERDTrimTrailingWhitespace = 1
"
" " Enable NERDCommenterToggle to check all selected lines is commented or not
" let g:NERDToggleCheckAllLines = 1
"
" let mapleader=","
" set timeout timeoutlen=1500
"
"
" "some stuff
"
" noremap <S-f> :FZF <CR>
" noremap <S-t> :tabe <CR>
" noremap <S-v> :vsp <CR>
" "noremap <S-1> :!cat <CR>
"
" ":! git add * | git commit -m "%" | git push
" noremap <S-y> :! git add * <CR> ! git commit -m "%" <CR> ! git push <CR>
"
"
"
" "call plug#begin()
" "Plug 'ilyachur/cmake4vim'
" "call plug#end()
"
"
"
" "noremap <S-<F3>> :RangerNewTab <CR>
" "noremap <S-d> :MakeCmdlineArgs <CR>
"
"
"
" noremap <C-e> :!cat %  <CR>
" noremap <F4> :wa <CR> :! make <CR>
"
" " noremap <C-v> :! valgrind --leak-check=full --show-leak-kinds=all --log-file=Valgrind.txt ./%< <CR>
"
" "Ranger
" "
" noremap <C-r> :RangerNewTab <CR>
"
"
"
" Plug 'sirver/ultisnips'
"     let g:UltiSnipsExpandTrigger = '<tab>'
"     let g:UltiSnipsJumpForwardTrigger = '<tab>'
"     let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"
" Plug 'lervag/vimtex'
"     let g:tex_flavor='latex'
"     let g:vimtex_view_method='zathura'
"     let g:vimtex_quickfix_mode=0
"
" Plug 'KeitaNakamura/tex-conceal.vim'
"     set conceallevel=1
"     let g:tex_conceal='abdmg'
"     hi Conceal ctermbg=none
"
" setlocal spell
" set spelllang=en_us
" inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u