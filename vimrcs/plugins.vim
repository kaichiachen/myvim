""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
map <leader>nn :NERDTreeToggle<cr>

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
call g:quickmenu#append('Move Window', 'echo "<leader>a or w or s or d"', '<leader>a or w or s or d')
call g:quickmenu#append('Create tab', 'tabnew', 'tn')
call g:quickmenu#append('Delete tab', 'tabnew', 'tc')
call g:quickmenu#append('Move to next tab', 'tabn', 'tm')
call g:quickmenu#append('Move to previous tab', 'tabp', 'tp')

" section 2, text starting with "#" represents a section (see the screen capture below)
call g:quickmenu#append('# Move cursor', '')

call g:quickmenu#append('Move a word', 'echo "w"', 'w')
call g:quickmenu#append('Move to First', 'echo "gg"', 'gg')
call g:quickmenu#append('Move to Last', 'echo GG"', 'G')


" section 3, text starting with "#" represents a section (see the screen capture below)
call g:quickmenu#append('# Nerd Tree', '')

call g:quickmenu#append('Toggle Nerd Tree', 'NERDTreeToggle', '<leader>nn')

" section 4, text starting with "#" represents a section (see the screen capture below)
call g:quickmenu#append('# Nerd Comment', '')

call g:quickmenu#append('Toggle Comment', 'echo "<leader>c<space>"', '<leader>c<space>')
call g:quickmenu#append('Comment', 'echo "<leader>cc"', '<leader>cc')
call g:quickmenu#append('Uncomment', 'echo "<leader>cu"', '<leader>cu')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => You Complete me
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
let g:ale_linters = {
            \   'c++': ['g++'],
            \   'c': ['gcc'],
            \   'python': ['pylint'],
            \}
