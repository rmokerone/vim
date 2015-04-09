runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
"定义快捷键的前缀,即<Leader>
let mapleader=";"
"开启文件类型侦测
filetype on
"根据侦测到的不同类型加载相应的插件
filetype plugin on

"快捷键
nmap lb 0
nmap le $
"设置快捷键将选中文本块复制至系统剪切板
vnoremap <Leader>y "+y
"设置快捷键将系统剪切板内容粘贴至vim
nmap <Leader>p "+p
"定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
"定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
"定义快捷键保存所有窗口内容并退出vim
nmap <Leader>WQ :wa<CR>:q<CR>
"不做任何保存 直接退出vim
nmap <Leader>Q :qa!<CR>
"依次遍历子窗口
nnoremap nw <C-W><C-W>
"跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
"跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
"跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
"跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
"定义快捷键在结对符间跳转 助记pair
nmap <Leader>pa %

"开启实时搜索功能
set incsearch
"搜索时大小写不敏感
set ignorecase
"关闭兼容模式
set nocompatible
"vim 自身命令行模式智能补全
set wildmenu

"生成帮助文档
:Helptags
"配色方案
set background=dark
let g:solarized_termtans=1
colorscheme solarized
"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"显示行号
set number
"高亮显示当前行
set cursorline
set cursorcolumn
"高亮显示搜索结果
set hlsearch
"取消代码折行
set nowrap

"设置主题背景透明
"设置状态栏主题风格
set term=xterm-256color
set termencoding=utf-8
set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
let g:Powerline_colorscheme='solarized256'

"开启语法高亮
syntax enable
"允许使用指定语法高亮配色方案替换默认方案
syntax on

"自适应不同语言的智能缩进
filetype indent on
"将制表符扩展为空格
set expandtab
"设置编辑时制表符占用空格数
set tabstop=4
"设置格式化时制表符占用空格数
set shiftwidth=4
"让vim把连续的空格视为制表符
set softtabstop=4

"基于缩进或者语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
"启动vim时关闭折叠代码
set nofoldenable

"*.cpp 和*.h间切换
nmap <Leader>ch :A<CR>
"子窗口显示*.cpp或*.h
nmap <Leader>sch :AS<CR>

"当前目录找不到ctags时到上层目录查找
set tags=tags;/
