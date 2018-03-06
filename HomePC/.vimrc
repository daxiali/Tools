set nocompatible
" required
filetype off
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
Plugin 'python-mode/python-mode'
call vundle#end()
" required
filetype on
filetype plugin on
filetype indent on
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
"语言设置
set langmenu=zh_CN.UTF-8
" 不要图形按钮
set go=
" 隐藏工具栏
set guioptions-=T
" 隐藏菜单栏
set guioptions-=m
" 语法高亮
syntax on
" 输入的命令显示出来，看的清楚些
set showcmd
" 不要闪烁
set novisualbell
" 启动显示状态行(1),总是显示状态行(2)
set laststatus=2
" 打开状态栏标尺
set ruler
" 设置当文件被改动时自动载入
set autoread
" 代码补全
set completeopt=longest,menu
" 共享剪贴板
set clipboard+=unnamed
" 从不备份
set nobackup
"自动保存
set autowrite
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" C代码里需要的缩排
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
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=1
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
" 允许backspace和光标键跨越行边界(不建议)
" set whichwrap+=<,>,h,l
" 禁止使用鼠标
set mouse=
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
"set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
" 进入插入模式用浅色高亮当前行
autocmd InsertEnter * se cul
" 离开插入模式退出浅色高亮当前行
autocmd InsertLeave * se nocul

" mapleader default '\'
nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>
" 映射全选+复制 ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
"去空行
nnoremap <C-F2> :g/^\s*$/d<CR>
"比较文件
nnoremap <F2> :vert diffsplit
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

" Autocomplete window goes away when you’re done with it
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'

let g:ctrlp_working_path_mode = 0

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" Tab键切换buffer
nmap <tab> :bn<CR>
" 支持tagbar状态栏
let g:airline#extensions#tagbar#enabled = 1
" 关闭空白符检测
let g:airline#extensions#whitespace#enabled=0
" 开启tabline
let g:airline#extensions#tabline#enabled=1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep=''
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep='|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show=1
" 设置airline风格
let g:airline_theme='solarized'
" 设置airline状态栏Z段，行号:列号 占总行百分比 光标字符十六进制 总行数
let g:airline_section_z = 'Hex:%B Col:%v Ln:%l/%L %3p%%'

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" ctags程序的路径
let g:tagbar_ctags_bin='ctags'
" 窗口宽度的设置
let g:tagbar_width=30
" 窗口在右侧
let g:tagbar_right=1
map <F6> :Tagbar<cr>

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
