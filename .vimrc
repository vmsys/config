se nu ai ci ts=4 sw=4 hls cb+=unnamed mouse=a

set nocompatible               " be iMproved
filetype off                   " required!       /**  从这行开始，vimrc配置 **/

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Yggdroot/indentLine'

" My Bundles here:  /* 插件配置格式 */
"   
" original repos on github （Github网站上非vim-scripts仓库的插件，按下面格式填写）
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos  （vim-scripts仓库里的，按下面格式填写）
" Bundle 'L9'
" Bundle 'FuzzyFinder'
Bundle 'vimwiki'
" non github repos   (非上面两种情况的，按下面格式填写)
" Bundle 'git://git.wincent.com/command-t.git'
" ... 

filetype plugin indent on     " required!   /** vimrc文件配置结束 **/
"                                           /** vundle命令 **/
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo 
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"   
" see :h vundle for more details or wiki for FAQ 
" NOTE: comments after Bundle command are not allowed.._

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 工作状态保存
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷方式
nmap <space> <c-f>

" 打开文件光标自动停留在上次编辑位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"自动保存折叠功能 
set vdir=$HOME/.vim/view
"au BufRead * loadview
"au BufNewFile * mkview
"au VimLeave * mkview
au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview

""""""""""""""""""""""""
se cf
set cb+=unnamed
map <c-d> :sh<cr>
map <c-m> :cd d:\sysdir\desktop<cr>
nnoremap <F5> 0"=strftime("%Y%m%d%H%M%S")."\|"<CR>gP
inoremap <F5> <home><C-R>=strftime("%Y%m%d%H%M%S")."\|"<CR>
nnoremap ti "=strftime("%Y-%m-%d %H:%M:%S")"<CR>gP
nnoremap tt "=strftime("%H.%M.%S")"<CR>gP
nnoremap tm :echo strftime("%Y-%m-%d %H:%M:%S")<cr>

" -----------------------------------------------------------------------------
"  vimwiki配置
" -----------------------------------------------------------------------------
let g:vimwiki_menu = ''
let g:vimwiki_use_mouse = 1


let WKROOT = '/mnt/usb/VMS/work/tool/gvim/Data/usrdata/'
let g:vimwiki_list = [{'path': WKROOT.'vimwiki1/', 'path_html': WKROOT.'vimwiki1/html/', 'html_header': WKROOT.'vimwiki1/template/header.tpl',},
                            \ {'path': WKROOT.'vimwiki2/', 'path_html': WKROOT.'vimwiki2/html/', 'html_header': WKROOT.'vimwiki2/template/header.tpl',},
                                                \ {'path': WKROOT.'vimwiki3/', 'path_html': WKROOT.'vimwiki3/html/', 'html_header': WKROOT.'vimwiki3/template/header.tpl',}]
                                                let g:vimwiki_file_exts = 'c, cpp, wav, txt, h, hpp, zip, sh, awk, ps, pdf'
                                                let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,center,strong,em,a'


" -----------------------------------------------------------------------------
"  < indentLine 插件配置 >
" -----------------------------------------------------------------------------
" 用于显示对齐线，与 indent_guides 在显示方式上不同，根据自己喜好选择了
" 在终端上会有屏幕刷新的问题，这个问题能解决有更好了
" 开启/关闭对齐线
" let g:indentLine_enabled=1
" nmap <leader>il :IndentLinesToggle<CR>

" 设置Gvim的对齐线样式
" if g:isGUI
"     let g:indentLine_char = "┊"
"     let g:indentLine_first_char = "┊"
" endif

" 设置终端对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
" let g:indentLine_color_term = 239

" 设置 GUI 对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
" let g:indentLine_color_gui = '#A4E57E'
