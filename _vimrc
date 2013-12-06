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
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
if has("cscope")
            set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
            " check cscope for definition of a symbol before checking ctags:
            " set to 1 if you want the reverse search order.
             set csto=1

             " add any cscope database in current directory
             if filereadable("cscope.out")
                 cs add cscope.out
             " else add the database pointed to by environment variable
             elseif $CSCOPE_DB !=""
                 cs add $CSCOPE_DB
             endif

             " show msg when any other cscope db added
             set cscopeverbose

             nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
             nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
             nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif

"tags
set tags=tags
set tags+=./tags
set tags+=~/.vim/systags
set autochdir
