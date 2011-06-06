" Start without the toolbar
set guioptions-=T

" Default gui color scheme
color delek

" Font
set guifont=Courier\ New:h18

" Don't beep
set visualbell

" Include user's local vim config
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
