"""""""""""""""""""""""""""""""""""""
" Vundle相关 ：Vim plugin manager.
"""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'minibufexpl.vim' "buffer管理
Plugin 'comments.vim' "快速注释
Plugin 'winmanager' "窗口管理
Plugin 'Lokaltog/vim-powerline' "漂亮的状态栏
Plugin 'kien/ctrlp.vim' "强大的文件搜索
Plugin 'godlygeek/tabular' "快速对齐
Plugin 'terryma/vim-multiple-cursors' "多光标同时编辑
Plugin 'tpope/vim-haml' "sass scss haml等css开发语言支持
Plugin 'genoma/vim-less' "less支持
Plugin 'Raimondi/delimitMate' "自动补全引号 括号等
Plugin 'hail2u/vim-css3-syntax' "css3语法高亮
Plugin 'othree/html5.vim' "html5标签支持
Plugin 'docunext/closetag.vim' "html xml自动闭合标签
Plugin 'gregsexton/MatchTag' "自动高亮匹配标签
Plugin 'easymotion/vim-easymotion' "强大的搜索定位
Plugin 'terryma/vim-expand-region' "自动选择括号等符号中的内容
Plugin 'tpope/vim-surround' "符号自动环绕
Plugin 'tpope/vim-repeat' "更为强大的重做功能
Plugin 'bronson/vim-trailing-whitespace' "显示以及去除行尾空格
Plugin 'SirVer/ultisnips' "代码片段补全
Plugin 'honza/vim-snippets' "内置了一堆语言的自动补全片段
Plugin 'rstacruz/vim-ultisnips-css' "css的补全
Plugin 'tacahiroy/ctrlp-funky' "基于ctrlp的搜索函数等变量名
Plugin 'dyng/ctrlsf.vim' "基于ctrlp的文件内容搜索，配合vim－multiple－cursors可以很方便一次修改多个文件的内容
Plugin 'pangloss/vim-javascript' "更好的js语法 锁进支持
Plugin 'othree/yajs.vim' "更好的js语法高亮
Plugin 'othree/javascript-libraries-syntax.vim' "js各类框架 库的高亮支持
Plugin 'maksimr/vim-jsbeautify' "格式化js css等
Plugin 'marijnh/tern_for_vim' "牛逼的基于语法分析的补全
Plugin 'mbriggs/mark.vim' "标记高亮
"Plugin 'gorodinskiy/vim-coloresque' "颜色符号显示对应颜色
"Plugin 'scrooloose/nerdtree' "文件树浏览
Plugin 'Xuyuanp/nerdtree-git-plugin' "git支持
Plugin 'majutsushi/tagbar' "ctags标签提取显示
Plugin 'The-NERD-tree'
Plugin 'bling/vim-airline'
Plugin 'grep.vim'
Plugin 'SuperTab'
Plugin 'echofunc.vim'
Plugin 'klen/python-mode'
Plugin 'pathogen.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""
"set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
"winpos 5 5          " 设定窗口位置  
"set lines=40 columns=155    " 设定窗口大小  
"set nu              " 显示行号  
set go=             " 不要图形按钮  
"color asmanian2     " 设置背景主题  
set guifont=Courier_New:h12:cANSI   " 设置字体  
"syntax on           " 语法高亮  
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
"set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
"set cmdheight=1     " 命令行（在状态行下）的高度，设置为1  
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
"set scrolloff=3     " 光标移动到buffer的顶部和/部时保持3行距离  
set novisualbell    " 不要闪烁(不明白)  
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
"set foldenable      " 允许折叠  
"set foldmethod=manual   " 手动折叠  
"set background=dark "背景使用黑色 
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif
" 设置配色方案
"colorscheme murphy
"字体 
"if (has("gui_running")) 
"   set guifont=Bitstream\ Vera\ Sans\ Mono\ 10 
"endif 
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""
" mapleader default '\'
"let mapleader = "," 
nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>
" 映射全选+复制 ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
"去空行  
nnoremap <F2> :g/^\s*$/d<CR> 
"比较文件  
nnoremap <C-F2> :vert diffsplit 
"新建标签  
map <M-F2> :tabnew<CR>  
"列出当前目录文件  
map <F3> :tabnew .<CR>  
"打开树状文件目录  
map <C-F3> \be  
"C，C++ 按F5编译运行
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!java %<"
	elseif &filetype == 'sh'
		:!./%
	endif
endfunc

"C,C++的调试
map <F8> :call Rungdb()<CR>
func! Rungdb()
	exec "w"
	exec "!g++ % -g -o %<"
	exec "!gdb ./%<"
endfunc

""""""""""""""""""""""""""""
" 实用设置
""""""""""""""""""""""""""""
" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
"允许插件  
filetype plugin on
"共享剪贴板  
set clipboard+=unnamed 
"从不备份  
set nobackup
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 设置在状态行显示的信息
"set foldcolumn=0
"set foldmethod=indent 
"set foldlevel=3 
"set foldenable              " 开始折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
set syntax=on
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
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
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
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 我的状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 总是显示状态行
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
"自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endfunction
filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

""""""""""""""""""""""""""""
" 插件设置
""""""""""""""""""""""""""""

" minibufexpl插件的一般设置
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" winManager一般设置
let g:AutoOpenWinManager = 0 "开启Vim时自动打开为1
let g:winManagerWindowLayout = 'NERDTree|Tagbar'
nmap wm :WMToggle<CR> 
nmap <silent> <F7> :WMToggle<cr> 

" NERD-tree一般设置
let g:NERDTree_title="[NERDTree]"

function! NERDTree_Start()
    exec 'q'  
    exec 'NERDTree'  
endfunction  
 
function! NERDTree_IsValid()  
    return 1  
endfunction

noremap <f9> :NERDTreeFind<cr>
let g:NERDTreeWinPos = 'left'
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeShowHidden = 0
let g:NERDTreeWinSize = 30 

" TagBar 一般设置
let g:Tagbar_title = "[Tagbar]"

function! Tagbar_Start()
    exec 'q'
    exec 'TagbarOpen'
endfunction
 
function! Tagbar_IsValid()
    return 1
endfunction

let g:tagbar_width = 30
let g:tagbar_right = 1

"自动退出Winmanager
"autocmd bufenter * if (winnr("$") == 2 && exists("b:Tagbar") && exists("b:NERDTreeType") && b:NERDTreeType == "primary")  | qa | endif
"自动进入vim行为
autocmd VimEnter * if (winnr("$") >= 2) | NERDTreeToggle | q! | 2wincmd w | endif


nnoremap <silent> <F10> :Grep<CR>

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="	"
let g:Powline_symbols='fancy'

"let g:EchoFuncShowOnStatus=1

" 主题设置
set t_Co=256
set background=light
"let g:solarized_termcolors=256
"colorscheme solarized
colorscheme tatami

" cscope快捷键设置
nmap <C-\>a :cs add cscope.out<cr>
nmap <C-\>r :cs reset<cr>
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<cr><cr>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<cr><cr>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<cr><cr>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<cr><cr>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<cr><cr>

""""""""""""""""""""""""""""
" python-mode 配置
""""""""""""""""""""""""""""
let g:pymode_folding = 0
let g:pymode_rope_goto_definition_bind = '<C-]>'
let g:pymode_run_bind = '<leader><C-r>'
let g:pymode_doc_bind = '<leader><C-k>'
let g:pymode_breakpoint_bind = '<leader><C-b>'
let g:pymode_rope_show_doc_bind = '<leader><C-d>'
let g:pymode_rope_rename_bind = '<leader>rr'
let g:pymode_rope_rename_module_bind = '<leader>r1r'
let g:pymode_rope_organize_imports_bind = '<leader>ro'
let g:pymode_rope_autoimport_bind = '<leader>ra'
let g:pymode_rope_module_to_package_bind = '<leader>r1p'
let g:pymode_rope_extract_method_bind = '<leader>rm'
let g:pymode_rope_extract_variable_bind = '<leader>rl'
let g:pymode_rope_use_function_bind = '<leader>ru'
let g:pymode_rope_move_bind = '<leader>rv'
let g:pymode_rope_change_signature_bind = '<leader>rs'
let g:pymode_rope_autoimport = 1
let g:pymode_options_max_line_length = 119



