source ~/.vim/vimrc.plugin

set wrap
" 注意位置不能放在上面
syntax enable
set background=dark
set cursorline
" set background=dark
" set termguicolors
" colorscheme material-monokai
" colorscheme Tommorrow-Night
set background=dark
let g:airline_theme = "hybrid"
colorscheme hybrid_material

" set nobackup 表示不需要备份文件
" set noswapfile 表示不创建临时交换文件
" set nowritebackup 表示编辑的时候不需要备份文件
" set noundofile 表示不创建撤销文件
set nobackup       " no backup files
set noswapfile     " no swap files
set nowritebackup  " only in case you don't want a backup file while editing
set noundofile     " no undo files

" 显示tab
set list!
set listchars=tab:>-,trail:-
" set list listchars=tab:>-,eol:¶
let c_space_errors = 1


" 高亮搜索结果
set hlsearch
set incsearch
" 查找时忽略大小写set ic
set ignorecase

" tab转换为空格
set ts=4
set autoindent
set tabstop=4     " (ts) width (in spaces) that a <tab> is displayed as
set expandtab     " (et) expand tabs to spaces (use :retab to redo entire file)
set shiftwidth=4  " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)

" 设置断行
" set textwidth=78
" C/C++编码设置
" set cin
" set cino=:0g0t0(sus

" leader
let mapleader=";"
let g:mapleader=";"

" 显示行号
set number

" 鼠标定位上次打开的位置
" au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


" 字符设置
set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,big5,latin1
set fenc=utf-8
set enc=utf-8
" language messages zh_CN.utf-8    设置所有的提示为中文

" 显示列宽
" if exists('+colorcolumn')
    " highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
    " " highlight ColorColumn ctermbg=235 guibg=#2c2d27
    " highlight ColorColumn guibg=#2d2d2d ctermbg=246
    " highlight ColorColumn guibg=#000000 ctermbg=0
    " set colorcolumn=79,100
    " let &colorcolumn=join(range(80,100),",")
" else
    " au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" endif
"
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" python-mode/python-mode
" let g:pymode_python = 'python3'

""
"" status line configure
""
" hi User1 ctermfg=red guibg=orange guifg=orange
" set laststatus=2
" set statusline=(%m)%-20F\ 
" set statusline+=[%{&ff}(%{&ff=='unix'?'\\n':(&ff=='mac'?'\\r':'\\r\\n')})]\ 
" "set statusline+=%1*[%{&fenc!=''?&fenc:&enc}]%0*\ 
" set statusline+=[%{&fenc!=''?&fenc:&enc}]\ 
" "set statusline+=%Y\  " 缓冲区文件类型
" "set statusline+=[%03c:%L]\ 
" set statusline+=[%03c,%03l\|%p%%*%L]
" "set statusline+=\ %m%r\ %= 
