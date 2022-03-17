
filetype on	"开启文件类型侦测
filetype indent on	"适应不同语言的缩进
syntax enable	"开启语法高亮功能
syntax on 	"允许使用用户配色


"""""""""""""""""""""""""""""""""""""""""""显示设置"""""""""""""""""""""""""""""""""""""""""""""
set number                      " 显示行号
set relativenumber              " 行号以相对当前行的方式显示，方便跳转
set showtabline=0               " 隐藏顶部标签栏
"uset cursorcolumn                " 突出显示当前列
syntax enable                   " 启用语法高亮度
syntax on                       " 开启语法高亮
set history=1000                " 记录 1000 条历史命令
set magic                       " 设置魔术
set showcmd                     " 输入的命令显示出来
set hlsearch                    " 高亮搜索的字符串
set incsearch                   " 即时搜索
set wrap                        " 设置代码自动折行
set tabstop=4                   " Tab 显示多少个空格，默认 8
set softtabstop=4               " 统一缩进为 4
set shiftwidth=4                " 每一级缩进是多少个空格
set smartindent                 " 开启智能缩进
set autoindent                  " 开启自动缩进
set backspace=2                 " 设置退格键可用，正常处理indent,eol,start
set scrolloff=5                 " 光标距离顶部和底部 5 行
set laststatus=2                " 命令行为两行
set cmdheight=2                 " 总是显示状态行
set autoindent                  " 启用自动对齐功能，把上一行的对齐格式应用到下一行
set clipboard+=unnamed          " 共享剪贴板   
set showmatch                   " 高亮显示匹配的括号
set showmode                    " 显示我们当前所处的模式
set matchtime=1                 " 匹配括号高亮的时间（单位是十分之一秒） 
set autoread                    " 设置当文件被改动时自动载入
set autowrite                   " 自动保存
set laststatus=2        	"总是显示状态栏
set ruler               	"显示光标位置
set cursorline          	"高亮显示当前行
"set cursorcolumn            "高亮显示当前列
exec "nohlsearch"
set incsearch               "边输边高亮
set ignorecase              "搜索时忽略大小写
set smartcase

set relativenumber          "其他行显示相对行号
set scrolloff=5            "垂直滚动时光标距底部位置
"
"""""""""""""""""""""""""""""""""""""""按键映射(just for colemak user)"""""""""""""""""""""""""""""""

"      ^    
"      "      u    
"      " < n     i >
"      "      e    
"      "      v    
"
"插入模式下的退出键
"      inoremap tt <Esc>
"
"      “ 方向键
      noremap n h
      noremap u k
      noremap e j
      noremap i l
      noremap N 7h
      noremap U 5k
      noremap E 5j
      noremap I 7l
"
"      ” 跳至行首/行尾
      noremap <C-n> 0
      noremap <C-i> $
      noremap k i
      noremap K I
      noremap l u
"
map Y y$                    " 复制 从光标到行尾 所在范围的文本
      map s <nop>
      map S :w<CR>
      map Q :q<CR>
      map R :source $MYVIMRC<CR>
      map ; :

" 预览插件 Markdown-preview 按键映射
let g:mkdp_brower = 'chromium'
let g:mkdp_echo_preview_url = 1
nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式打开 md 预览
imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式打开 md 预览
nmap <silent> <F9> <Plug>StopMarkdownPreview    " 普通模式关闭 md 预览
imap <silent> <F9> <Plug>StopMarkdownPreview    " 插入模式关闭 md 预览
      
      "插件列表

call plug#begin('~/.local/share/nvim/plugged') "Vim 插件的安装路径，可以自定义。
"~ 表示系统路径，在windows下为 C:/User/username/
" Apperance
Plug 'vim-airline/vim-airline'
" Markdown
Plug 'iamcco/mathjax-support-for-mkdp'   " 用于 Markdown 预览数学公式
Plug 'iamcco/markdown-preview.vim'       " Markdown 预览工具




call plug#end()
