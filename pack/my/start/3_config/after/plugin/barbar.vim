" Tabs, as understood by any other editor.

if !g:enablenvim
	finish
endif

PackAdd nvim-tree/nvim-web-devicons
PackAdd romgrk/barbar.nvim

""""""""""""""""""""""""""""""""""""""""
"""" Mappings
""""""""""""""""""""""""""""""""""""""""

" enable saving tabnames in the sessions
set sessionoptions+=tabpages,globals

" new tab
nnoremap <silent>    <leader>t :tabnew<CR>
" reopen last closed tab
nnoremap <silent>    <leader>T :e#<CR>

" close buffer
nnoremap <silent>    ZZ <Cmd>BufferClose<CR>

" Move to previous/next
nnoremap <silent>    <leader>[ <Cmd>BufferPrevious<CR>
nnoremap <silent>    <leader>] <Cmd>BufferNext<CR>

" Re-order to previous/next
nnoremap <silent>    <leader>{ <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <leader>} <Cmd>BufferMoveNext<CR>

" Goto buffer in position...
nnoremap <silent>    <leader>1 <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <leader>2 <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <leader>3 <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <leader>4 <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <leader>5 <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <leader>6 <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <leader>7 <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <leader>8 <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <leader>9 <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <leader>0 <Cmd>BufferLast<CR>

" Magic buffer-picking mode
nnoremap <silent>		 <leader>p <Cmd>BufferPick<CR>

""""""""""""""""""""""""""""""""""""""""
"""" Options
""""""""""""""""""""""""""""""""""""""""

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" Enable/disable animations
let bufferline.animation = v:false

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Enables / disables diagnostic symbols
" ERROR / WARN / INFO / HINT
let bufferline.diagnostics = [
  \ {'enabled': v:true, 'icon': '???'},
  \ {'enabled': v:false},
  \ {'enabled': v:false},
  \ {'enabled': v:true},
\]

" Excludes buffers from the tabline
let bufferline.exclude_ft = ['fugitive']
let bufferline.exclude_name = ['/usr/bin/zsh']

" Hide inactive buffers and file extensions. Other options are `alternate`, `current`, and `visible`.
" let bufferline.hide = {'extensions': v:true, 'inactive': v:true}

" highligh alternate buffers
let bufferline.highlight_alternate = v:true

" highlight file icons in inactive buffers
let bufferline.highlight_inactive_file_icons = v:true

" highlight visible buffers
let bufferline.highlight_visible = v:true

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
" if set to 'buffer_number_with_icon', will show buffer number and icons in the tabline
let bufferline.icons = 'both'

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '???'
let bufferline.icon_separator_inactive = '???'
let bufferline.icon_close_tab = '???'
let bufferline.icon_close_tab_modified = '???'
let bufferline.icon_pinned = '!'

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 1

" Sets the minimum padding width with which to surround each tab.
let bufferline.minimum_padding = 1

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is '[Buffer X]'
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = '~void~'

""""""""""""""""""""""""""""""""""""""""
"""" Colorscheme
""""""""""""""""""""""""""""""""""""""""

let fg_target = 'magenta'


