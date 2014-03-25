
" 编码设置
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 解决consle输出乱码
language messages zh_CN.utf-8


"语法高亮
syntax enable
syntax on

"配色方案
"colorscheme torte

" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent

" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
set expandtab

" 显示tab以及行末$
set list

" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch

" 总是显示状态行
set laststatus=2
" 在编辑过程中，在右下角显示光标位置的状态行
set ruler           

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
" set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 模仿MS Windows中的快捷键 
"-----------
"vmap <C-c> "yy 
"vmap <C-x> "yd 
"nmap <C-v> "yp 
"vmap <C-v> "yp 
"nmap <C-a> ggvG$ 

"taglist 设置
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"智能补全
filetype plugin indent on
set completeopt=longest,menu
"tab建补全
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"


" ======= 引号 && 括号自动匹配 ======= "
:inoremap ( ()<ESC>i
 
:inoremap ) <c-r>=ClosePair(')')<CR>

 
:inoremap { {}<ESC>i


:inoremap } <c-r>=ClosePair('}')<CR>


:inoremap [ []<ESC>i
 
:inoremap ] <c-r>=ClosePair(']')<CR>
 
":inoremap < <><ESC>i
     
":inoremap > <c-r>=ClosePair('>')<CR>
 
:inoremap " ""<ESC>i
 
:inoremap ' ''<ESC>i
 
:inoremap ` ``<ESC>i
 
function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf
 
"source /usr/share/vim/mswin.vim


