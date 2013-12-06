syntax enable

"" Tab and Backspace
set sw=2
set tabstop=4
set shiftwidth=4
set cindent
set smartindent
set autoindent
set backspace=indent,eol,start  "" set backspace
set smarttab

"" Display
set number        "" show line number
set ruler         "" always show current position
set cursorline    "" highlight the current line
set showcmd

"" 文件监测
set completeopt=longest,menu

" 侦测文件类型
filetype on

" 载入文件类型插件
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

"taglist
"let Tlist_Auto_Open = 1  "在启动VIM后，自动打开taglist窗口  
let Tlist_Use_Right_Window=0 " 1为让窗口显示在右边，0为显示在左边  
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，设置为1时不同时显示>多个文件的tag，只显示当前文件的  
let Tlist_File_Fold_Auto_Close=1 "同时显示多个文件中的tag时，taglist只显示当前文件tag，>其他文件的函数列表折叠隐藏  
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动退出vim  
"let Tlist_Use_SingleClick= 1    " 缺省情况下，在双击一个tag时，才会跳到该tag定义的位置  
"let Tlist_Process_File_Always=0  "是否一直处理tags.1:处理;0:不处理  

"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-    
if has("cscope")    
set csprg=/usr/local/bin/cscope    
set csto=1    
set cst    
set nocsverb    
" add any database in current directory     
if filereadable("cscope.out")    
   cs add cscope.out    
endif    
set csverb    
endif   

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>  
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>  
"cscope替换Ctrl+]
map g<C-]> :cs find 3 <C-R>=expand(“<cword>”)<CR><CR>
map g<C-/> :cs find 0 <C-R>=expand(“<cword>”)<CR><CR>

"tags
set tags=tags
set tags+=~/.vim/systags
set autochdir

map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>  

"OmniCppComplete
set nocp

"SuperTab
let g:SuperTabDefaultCompletionType="context"
