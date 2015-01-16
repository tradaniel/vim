set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
"
"my Bundle here:
"
"
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"
filetype plugin indent on

" 显示行号
set number
" 打开C/C++风格的自动缩进
set cin
" 该命令打开 VIM 的状态栏标尺
set ruler
" 搜索时高亮显示被找到的文本
set hls
" 即时看到查找结果
set incsearch
" 在搜索的时候忽略大小写
set ignorecase
" tab for 4 space
set tabstop=4
" expand tab to space
set expandtab
" auto indent
set autoindent
set smartindent
" 缩进宽度4
set shiftwidth=4
" c缩进风格`
set cindent
set cino=:0g0t0(sus
" 光标所在行显示下划线
set cursorline
set cursorcolumn
" 不自动生成备份文件
set nobackup
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=indent,eol,start
" 增强模式中的命令行自动完成操作
set wildmenu
" 高亮显示80列
set cc=80,100
" 不让vim发出讨厌的滴滴声
set noerrorbells

set ffs=unix

" 与vi不兼容
set nocp

" 自动换行
set wrap
set nopaste

"定义快捷键前缀，即<leader>，例如mark，lookupfile等
let mapleader=";"
let g:mapleader=";"

" 定义快捷键到行首和行尾
nmap lb ^
nmap le $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
"nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %

" 光标移动到buffer的顶部和底部时保持3行距离
"set scrolloff=3

" 与windows共享剪贴板
set clipboard+=unnamed

" 不让vim发出讨厌的滴滴声
set noerrorbells
" 不要闪烁
set novisualbell

" 检测文件类型，NERD_commenter才能根据文件类型进行注视
filetype on
filetype plugin on
filetype indent on

" 移动下一行或者上一行
set whichwrap=h,l,b,s,<,>,[,]

" 带有如下符号的单词不要被换行分割
" filetype on会影响下面语句，如果打开filetype on，需要放在其后
"set iskeyword+=_,$,@,%,#,-,37,45,62
set iskeyword+=@,%,#
set iskeyword-=.,:

" Normal 模式映射 不区分大小写查找
nnoremap / /\c
" visual 模式映射 区分大小写的查找
vnoremap / /\C

"颜色主题
syntax enable
set background=dark
"set t_Co=256
"let g:solarized_termcolors=256      " use solarized 256 fallback
"colorscheme jellybeans
"colorscheme desert
"colorscheme solarized
"colorscheme darkburn
" 命令行（在状态行下）的高度，默认为1，这里是2
" set cmdheight=2
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
"" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

set list                                  " 显示tab和空格
"set listchars=tab:\|\ ,nbsp:%,trail:░     " 设置tab和空格样式
set listchars=tab:\|\ ,nbsp:%,trail:-     " 设置tab和空格样式

set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,big5,latin1
set fenc=utf-8
set enc=utf-8
" language messages zh_CN.utf-8    设置所有的提示为中文

" 显示语法高亮
syntax enable
syntax on

set fdm=indent          " 代码折叠
set foldlevel=10
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"
" MiniBuf Explorer
"
let g:miniBufExplMapCTabSwitchWindows=1
"noremap <C-J>     <C-W>j
"noremap <C-K>     <C-W>k
"noremap <C-H>     <C-W>h
"noremap <C-L>     <C-W>l
"let g:miniBufExplMapWindowNavArrows = 1
"map <C-Down>  <C-W>j
"map <C-Up>    <C-W>k
"map <C-Left>  <C-W>h
"map <C-Right> <C-W>l
"noremap <C-TAB>   :MBEbn<CR>
"noremap <C-S-TAB> :MBEbp<CR>
map <TAB> <C-W><C-W>
map <F8> :bn<CR>
map <F7> :bN<CR>

"
"grep.vim
"
nnoremap <silent> <F3> :Rgrep<CR>

"
"TagbarToggle
"
nmap <F9> :TagbarToggle<CR>
let g:tagbar_width=40
let g:tagbar_left=1

"
" NERDTree 插件设置
"
map t :NERDTree<CR>
map tc :NERDTreeClose<CR>

"
" ctags 设置
"
set tags=/home/users/wangdongyuan/dev/dayu/tags
"set tags+=/home/users/wangdongyuan/dev/tm/tags
set autochdir

"
" cscope 设置
"
"set csprg=/home/users/wangdongyuan/tools/cscope/bin/cscope
"set cst
"set csto=0
"set csverb
"set cspc=6
"cscope add cscope.out
if has("cscope")
    set csprg=/home/users/wangdongyuan/tools/cscope/bin/cscope
    set csto=0
    set cst
    set nocsverb
    " add any database in current directory
    "if filereadable("cscope.out")
        cscope add /home/users/wangdongyuan/dev/dayu/cscope.out
        cscope add /home/users/wangdongyuan/dev/tm/cscope.out
        cscope add /home/users/wangdongyuan/dev/infcode/cscope.out
    " else add database pointed to by environment
    "elseif $CSCOPE_DB != ""
        "cs add $CSCOPE_DB
    "endif
    set csverb
endif

map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>

"
" omnicppcomplete comfigure
" 需要打开下面的设置，前面打开，否则影响iskeyword等功能
" option ‘omnifunc’ is not set
"
"set nocp
filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"
"minibufexpl configure
"
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1


""
"" status line configure
""
hi User1 ctermfg=red guibg=orange guifg=orange
set laststatus=2
set statusline=(%m)%-20F\ 
set statusline+=[%{&ff}(%{&ff=='unix'?'\\n':(&ff=='mac'?'\\r':'\\r\\n')})]\ 
"set statusline+=%1*[%{&fenc!=''?&fenc:&enc}]%0*\ 
set statusline+=[%{&fenc!=''?&fenc:&enc}]\ 
"set statusline+=%Y\  " 缓冲区文件类型
"set statusline+=[%03c:%L]\ 
set statusline+=[%03c,%03l\|%p%%*%L]
"set statusline+=\ %m%r\ %= 

" 相对行设置
set nornu
function! g:ToggleNuMode()
    if(&rnu == 1)
        set nornu
    else
        set rnu
    endif
endfunc

"Ctrl+L key map
nnoremap <C-L> :call g:ToggleNuMode()<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" CtrlP
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用该选项来改变普通模式 Normal 下调用CtrlP的按键绑定
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_map = '..'
" 设置它的工作目录
let g:ctrlp_working_path_mode = 'ra'
"设置自定义的根目录标记作为对默认标记(.hg, .svn, .bzr, and _darcs)
"的补充。自定义的标记具有优先权:
let g:ctrlp_root_markers = ['.ctrlp']
" 如果你想CtrlP扫描隐藏文件和目录，设置该选项为1
let g:ctrlp_show_hidden = 1
" 排除版本控制文件
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX
"set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*  " Windows ('noshellslash')
"作为对 'wildignore' 的补充，用来设置你只是想在CtrlP中隐藏的文件和目录。使用正
"则表达式来指定匹配模式
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/].*\.(git|hg|svn|clean|tmp)$',
    \ 'file': '\v\.(exe|so|dll|o|a|py)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
" 使用该选项指定当使用 <c-y> 打开新建的文件时，文件的打开方式:
let g:ctrlp_open_new_file = 'v'
"设置该选项为0通过退出Vim时不删除缓存文件来启用跨回话的缓存:
let g:ctrlp_clear_cache_on_exit = 1
"设置存储缓存文件的目录:
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
"如果你想CtrlP扫描隐藏文件和目录，设置该选项为1:
let g:ctrlp_show_hidden = 0
