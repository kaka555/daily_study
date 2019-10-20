set nocp
set ru
syntax on
set number
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1
set tabstop=4
set autoindent
set shiftwidth=4
filetype on
set showmatch
set matchtime=5
set cindent
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
map <F1> <Esc>:TlistToggle<Cr>
set tags=tags;
set autochdir
set bg=dark
nmap <F5> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
                        \ :!cscope -b -i cscope.files -f cscope.out<CR>
                                                \ :cs reset<CR>
set hlsearch
cs add /my/kernel-4.4/cscope.out /my/kernel-4.4/
"cs add /my/busybox-1.29.2/busybox-1.30.1/cscope.out /my/busybox-1.29.2/busybox-1.30.1

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
