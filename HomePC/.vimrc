set nocompatible
filetype off
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'winmanager'
Plugin 'genoma/vim-less'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'python-mode/python-mode'
call vundle#end()
filetype on                  " required
filetype plugin indent on
set go=             " 不要图形按钮
syntax on           " 语法高亮
set showcmd         " 输入的命令显示出来，看的清楚些
set novisualbell    " 不要闪烁(不明白)
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)
" 显示中文帮助
if version >= 603
	set helplang=cn
endif

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

" 设置当文件被改动时自动载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全
set completeopt=longest,menu
"共享剪贴板
set clipboard+=unnamed
"从不备份
set nobackup
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
"set autoindent
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
"语言设置
set langmenu=zh_CN.UTF-8
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
set wildmode=list:longest
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

if has('mouse')
	set mouse-=a
endif

" Autocomplete window goes away when you’re done with it
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ctrlp_working_path_mode = 0

" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 0
if !exists('g:airline_symbols')
	let g:airline_symbols={}
endif

" 关闭空白符检测
let g:airline#extensions#whitespace#enabled=0
" 开启tabline
let g:airline#extensions#tabline#enabled=1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep=' '
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep='|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline_theme='solarized'

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

let g:AutoOpenWinManager = 0 "开启Vim时自动打开为1
let g:winManagerWindowLayout = 'NERDTree|Tagbar'
nmap wm :WMToggle<CR>
nmap <silent> <F7> :WMToggle<cr>

let g:NERDTree_title="[NERDTree]"

function! NERDTree_Start()
	exec 'q'
	exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
	return 1
endfunction

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

" 含有NerdTree时候多窗口一起退出
autocmd VimEnter * if (winnr("$") >= 2) | NERDTreeToggle | q! | 2wincmd w | endif

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

let g:pymode_python = 'python3'
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

set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_contrast="high"
colorscheme solarized

if &term =~ '256color'
	" disable Background Color Erase (BCE) so that color schemes
	" render properly when inside 256-color tmux and GNU screen.
	" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	set t_ut=
endif
