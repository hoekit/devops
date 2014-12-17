" To reload this file within vim
" :so %

:set nocp
:set nohls is ic

" Disable beep and flash on error
:set vb t_vb=

" Automatically change working directory to the current buffer
" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
set autochdir

" UTF-8 encoding
:set encoding=utf-8

" GUI
:colorscheme elflord
":set guifont=Courier\ New
:set guifont=Ubuntu\ Mono
:set guioptions-=T	" Remove toolbar
:set guioptions-=m	" Remove menu bar

" Set VIM position & size on screen
" :winpos 702 0
" :set lines=46 columns=185
" :set lines=49 columns=92

" Set tab stops and indenting
:set tabstop=4
:set shiftwidth=4
:set autoindent smartindent

" Insert space characters whenever the tab key is pressed
" Use :retab to change all existing tab characters
:set expandtab

" When deleting delete 4-spaces
:set softtabstop=4


" http://vim.wikia.com/wiki/Automatic_word_wrapping
" Set text width for auto wrap
:set textwidth=78
" Make autowrap at word boundaries
:set formatoptions+=t
" To automatically wrap a line, type gqq

" Make backspace work as expected after A[ppend]
:set backspace=2

" Enable syntax highlighting
:syntax enable
au BufNewFile,BufRead *.cgi		setf perl
au BufNewFile,BufRead *.md		set filetype=markdown

" Folding options
":let fold_perl=1
":set foldmethod=syntax
:set foldmethod=manual

" Show line numbers
:set number

" Personalize the status line
:set statusline=%f%m%r%h%w\ [%{&ff}\|%Y]\ [%b]\ [%p%%\ r%l,c%v]\ [b%n]
" [[LEN=%L] ASC=\%03.3b]\ [HEX=\%02.2B]\ 
:set laststatus=2
:hi StatusLine gui=reverse


"---------------------------------------------------------------------
" Source - http://vim.wikia.com/wiki/Insert_current_date_or_time
" A press F5 to insert date
":nnoremap <F5> "=strftime("%a, %d %b %Y %X")<CR>P
":inoremap <F5> <C-R>=strftime("%a, %d %b %Y %X")<CR>
:nnoremap <F5> "=strftime("%a, %d %b %Y")<CR>P
:inoremap <F5> <C-R>=strftime("%a, %d %b %Y")<CR>

"---------------------------------------------------------------------

" Abbreviations
:iab in_dmmy  join(  ' ',  (  split(/\s+/,localtime().'')  )[2,1,4]  ); # dd mmm yyyy
:iab in_is    is($got,$expected,$t_name);
:iab shld should
:iab <c <code>
:iab </c </code>
:cab ev e ~/_vimrc
:cab sv w \| :so ~/_vimrc
:cab rr :put=strftime(\"----\n# %a %d %b %Y %H:%M:%S #\n\n\n\n\") \| :15
:cab ppc w \| !perl -c % <CR>
:cab ppr w \| !perl % <CR>
:cab ppp w \| !perl -S publish_post.pl %<CR>
:cab nsub vimgrep /^sub / %
:cab wl bufdo lcd %:h
" Read workflow template
:cab rwf r ~/wflow/template.mdown
 
"---------------------------------------------------------------------
" Final actions
" :source F:/APP/vim/vim73/macros/matchit.vim
" Make :W work like save command, :w
:command W w

" Map Ctrl-C and Ctrl-V to Copy and Paste respectively
" http://superuser.com/questions/61226/configure-vim-for-copy-and-paste-keyboard-shortcuts-from-system-buffer-in-ubuntu 
vnoremap <C-C> "+y
map <C-V> "+p

" Disable backup and swaps
set nobackup
set noswapfile

" Enable mouse scrolling
set mouse=a

" Automatically check syntax for perl scripts
autocmd BufWritePost *.pl,*.pm,*.t execute '!perl -c %'
" Too slow
" autocmd BufWritePost *.js execute '!java -jar /home/hoekit/app/closure-compiler/compiler.jar --js % --js_output_file /tmp/aa.js'

"-----------------------------------------------------------------------
" WINDOWS ONLY
" Press Ctrl-F5 to launch default action on visually selected text
" http://vim.wikia.com/wiki/Open_a_web-browser_with_the_URL_in_the_current_line
vnoremap <silent> <C-F5> :<C-U>let old_reg=@"<CR>gvy:silent!!cmd /cstart <C-R><C-R>"<CR><CR>:let @"=old_reg<CR>

