set number "开启行号显示
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set termguicolors
set background=dark
set ignorecase
set modifiable
set mouse=a

" 设置leader键
let g:mapleader=","
"   保存文件
inoremap <leader>s <Esc>:w<cr>
noremap <leader>s :w<cr>
"	快速进入normal模式
inoremap <leader>nm <Esc>`^
"   快速搜索内容
nmap es <Plug>(easymotion-s2)
"   查看文件结构
nmap <leader>tt :TagbarToggle<cr>
"   搜索文件
nmap <leader>t :Files<cr>

" 可视化缩进配置
let g:indent_guides_guide_size=1  " 指定对齐线的尺寸
let g:indent_guides_start_level=2 " 从第二层开始可视化显示缩进
let g:indentLine_char='¦'

" 设置主题
syntax on
colorscheme hybrid

" 加载其他配置
source ~/.config/nvim/coc-init.vim
source ~/.config/nvim/coc-fzf-preview-init.vim

" 标签页配置
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'


" 插件管理
call plug#begin('~/.config/nvim/plugged')

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" 可视化缩进
	Plug 'Yggdroot/indentLine'

	" 主题
	Plug 'crusoexia/vim-monokai'
	Plug 'w0ng/vim-hybrid'

	" 文件查找
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	" 快速搜索并定位内容
	Plug 'easymotion/vim-easymotion'

	" 搜索并替换内容
	Plug 'brooth/far.vim'

	" 成对编辑
	Plug 'tpope/vim-surround'

	" 查看结构
	Plug 'preservim/tagbar'

	" 注释
	Plug 'tpope/vim-commentary'

	" 标签页
	Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

	" markdown
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app &&  yarn install'        }

call plug#end()
