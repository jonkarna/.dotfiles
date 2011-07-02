" Start without the toolbar
set guioptions-=T

" Default gui color scheme
color delek

" Font
if has("gui_gtk2")
  set guifont=Monospace\ 16
else
  set guifont=Courier\ New:h18
end

" Don't beep
set visualbell

" Include user's local vim config
if filereadable(expand("~/.gvimrc.local"))
  source ~/.gvimrc.local
endif
