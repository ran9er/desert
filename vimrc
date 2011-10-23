"运行在非兼容(VI)模式下(命令模式下 TAB 补全){{{
set nocompatible
"}}}

"设定文件编码{{{
"内部编码
set encoding=utf-8
"默认保存编码
set fileencoding=utf-8
"识别编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"正确处理中文折行
set formatoptions+=mM
"将不明宽度的字符作为双字节
set ambiwidth=double
"以下字符将被视为单词的一部分 (ASCII)：
set iskeyword+=33-47,58-64,91-96,123-128
"插入模式下，“←”如何删除光标前的字符：行首空白、换行符、插入点之前的字符
set backspace=indent,eol,start
"}}}

"字体{{{
if has("win32")
    set guifont=Yahei_Consolas_Hybrid:h12
"    set guifontwide=Yahei_Consolas_Hybrid:h12
endif
"}}}

"状态栏样式 {{{
set laststatus=2
  function! CurDir()
     let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
     return curdir
  endfunction
set statusline=\ %F%m%r%h\ [%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
"在状态栏位置显示补全菜单
set wildmenu
"}}}

"UI选项{{{ 
"简洁启动模式
set shortmess=atI
"设定 GUI 选项
"set guioptions=gmrLtT  m:菜单 T:工具栏 r:滚动条
set guioptions=gLt
"命令行高度
set cmdheight=1
"显示标尺
set ruler
"}}}

"缓冲区选项{{{ 
"开启语法加亮
syntax on
"配色风格
colorscheme desert
"显示不完整的段落
set display=lastline
"自动折行
"set nowrap
set wrap
"按完整单词折行
set nolinebreak
"set linebreak
"设定行距 ( GUI 界面中生效 )
set linespace=4
"行宽（输入时自动插入换行符）
"set textwidth=80
set textwidth=0
"命令行历史纪录
set history=500
"粘贴模式
"set paste "set nopaste
"}}}

"缩进选项{{{
"设定制表符宽度
set tabstop=4
"设定 Tab 缩进的空格数
set shiftwidth=4
"将缩进转换为空格
set expandtab
"设定自动缩进(新行与前一行缩进相同)
"set autoindent
set noautoindent
"}}}

"搜索选项{{{ 
"禁用增量搜索
set incsearch
"set noincsearch
"搜索时忽略大小写
set ignorecase
"set noignorecase
"高亮显示搜索结果
set hlsearch
"}}}

"虚空间操作{{{
"允许所有模式下的虚空间编辑 （虚空间:不包含任何文本的空间。如换行符之后）
"set virtualedit=all
"禁止在虚空间编辑
"set virtualedit=
"换行符后一格作为虚空间
set virtualedit=onemore,block
"}}}

"设定折叠方式{{{
"set foldmethod=manual
set foldmethod=marker
"}}}

"按键选项{{{
"使用 Space 翻页
noremap <Space> <PageDown>
"j k 在屏幕行间上下移动；gj gk 在物理行间上下移动 
noremap j gj
noremap k gk
noremap gj j
noremap gk k
"}}}

"记忆最后编辑状态{{{
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set viminfo='1000,f1,<500
"}}}

"Windows全屏{{{
if has('gui_running') && has("win32")
    map <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
endif

chdir $VIM/..
"}}}
"" END OF FILE """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:filetype=vim foldmethod=marker autoindent expandtab shiftwidth=4
