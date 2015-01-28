" 当前编辑的文件编码方式
set fileencoding=utf-8

" vim 内部使用的字符编码方式
set encoding=utf-8

" vim启动时会按照所列出的字符编码方式逐一探测,并且将 fileencoding 设置为最终探测到的字符编码方式。因此最好将 Unicode 编码方式放到这个列表的最前面，将拉丁语系编码方式 latin1 放到最后面。
set fileencodings =utf-8,gbk,latin1

set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8

"change this back later
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"""vundle可以管理多种类型仓库
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)


" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
""其一
" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Yggdroot/indentLine'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" scripts from http://vim-scripts.org/vim/scripts.html
" 其二:来自vim-scripts
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'Markdown'

" scripts not on GitHub
" 其三,来自其他git仓库
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/"zbb/.vim/bundle/vundle'
" ...

"所有的插件必须在
"call vundle#rc()与下一行之间声明
filetype plugin indent on     " required

"""""接下来是我们自己的vim配置部分
"""""
" 语法高亮
syntax on       
" when vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 

"定义c-hotkeys的mapleader快捷键
"这是最近才明白
let mapleader = ","


"""""""""""""""ycm setting"""""""""""""""""""
"这是youcompleme插件的特殊配置,需要随后进一步验证
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tag_files = 1

" 打开自动缩进,继承前一行的缩进方式，特别适用于多行注释
set autoindent      
" 设置缩进
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set nu              " 显示行号
set showcmd         " 显示命令
set noswapfile      " 不使用swp文件
set nobackup        " 关闭备份
set incsearch       " 增量式搜索
set hlsearch        " 高亮搜索
set ignorecase      " 搜索时忽略大小写
set magic           " 额，自己:h magic吧，一行很难解释
set showmatch       " 显示匹配的括号
set nowb
set lbr             " 在breakat字符处而不是最后一个字符处断行
set ai              " 自动缩进
set si              " 智能缩进
set history=100     " vim记住的历史操作的数量，默认的是20
set autoread        " 当文件在外部被修改时，自动重新读取
set mouse=a         " 在所有模式下都允许使用鼠标，还可以是n,v,i,c等
set guioptions-=R   " 隐藏右边滚动条
set formatoptions+=mM   " 正确地处理中文字符的折行和拼接
set whichwrap+=<,>,h,l  " 退格键和方向键可以换行


