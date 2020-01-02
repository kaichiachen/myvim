""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeChDirMode = 2
let NERDTreeChDirMode=2
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '__pycache__']
let NERDTreeDirArrows = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=20
let g:NERDTreeIndicatorMapCustom = { 
            \ "Modified"  : "Δ",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✗",
            \ "Dirty"     : "O",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }
map tt :NERDTreeToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Quick Menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>menu :call quickmenu#toggle(0)<cr>
" enable cursorline (L) and cmdline help (H)
let g:quickmenu_options = "HL"

" clear all the items
call g:quickmenu#reset()

" section 1, text starting with "#" represents a section (see the screen capture below)
call g:quickmenu#append('# Basic', '')

call g:quickmenu#append('Search', './', '<space>')
call g:quickmenu#append('PluginInstall', 'PlugInstall', 'PlugInstall')
call g:quickmenu#append('Move Window', 'echo "<shift> <Up> or <Down> or <Left> or <Right>"', '<shift> <Up> or <Down> or <Left> or <Right>')
call g:quickmenu#append('Create tab', 'tabnew', 'tn')
call g:quickmenu#append('Delete tab', 'tabnew', 'cc')
call g:quickmenu#append('Move to next tab', 'tabn', 'tm')
call g:quickmenu#append('Move to previous tab', 'tabp', 'tp')
call g:quickmenu#append('Correct spelling word', 'setlocal spell!', 'dd')
call g:quickmenu#append('Shift Code Block', 'echo "shift + < or >"', 'shift + < or >')

" section 2, text starting with "#" represents a section (see the screen capture below)
call g:quickmenu#append('# Move cursor', '')

call g:quickmenu#append('Move a word', 'echo "w"', 'w')
call g:quickmenu#append('Move to First', 'echo "gg"', 'gg')
call g:quickmenu#append('Move to Last', 'echo GG"', 'G')


" section 3, text starting with "#" represents a section (see the screen capture below)
call g:quickmenu#append('# Nerd Tree', '')

call g:quickmenu#append('Toggle Nerd Tree', 'NERDTreeToggle', 't')

" section 4, text starting with "#" represents a section (see the screen capture below)
call g:quickmenu#append('# Nerd Comment', '')

call g:quickmenu#append('Toggle Comment', 'echo "shift+c"', 'shift+c')
call g:quickmenu#append('Comment', 'echo "<leader>cc"', '<leader>cc')
call g:quickmenu#append('Uncomment', 'echo "<leader>cu"', '<leader>cu')

" section 5, text starting with "#" represents a section (see the screen capture below)
call g:quickmenu#append('# You Complete Me', '')

call g:quickmenu#append('GoTo', 'YcmCompleter GoTo', 'g')
call g:quickmenu#append('GetType', 'YcmCompleter GetType', 't')
call g:quickmenu#append('GetDoc', 'YcmCompleter GetDoc', 'yd')
call g:quickmenu#append('Fix', 'YcmCompleter FixIt', 'yd')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => You Complete me
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
"let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_stop_completion = [ '<Enter>' ]
let g:ycm_semantic_triggers = {'c' : ['->', '.'],'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s','re!\[.*\]\s'],'ocaml' : ['.', '#'],'cpp,objcpp' : ['->', '.', '::'],'perl' : ['->'],'php' : ['->', '::'],'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],'ruby' : ['.', '::'],'lua' : ['.', ':'],'erlang' : [':'],}

nnoremap yg :YcmCompleter GoTo <CR>
nnoremap yt :YcmCompleter GetType <CR>
nnoremap yd :YcmCompleter GetDoc <CR>
nnoremap yf :YcmCompleter FixIt <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fix_on_save = 1
let g:ale_set_highlights = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
let g:ale_linters = {
            \   'c++': ['g++'],
            \   'c': ['gcc'],
            \   'python': ['pylint'],
            \}
map ss :ALEDetail<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Async
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:asyncrun_open = 6
let g:asyncrun_bell = 1
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Rainbow Parentheses
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 0
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Comment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <S-c> :call NERDComment(0,"toggle")<CR>
vnoremap <S-c> :call NERDComment(0,"toggle")<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map ff :FZF<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map  gg :Ack<space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gitgutter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1 
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = 'Δ'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = 'Δ-'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gutentags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

nnoremap <C-p> <C-]>
nnoremap <C-\> gd
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => AsyncRun
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap cmd :AsyncRun!<space>
