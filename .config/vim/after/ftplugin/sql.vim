set softtabstop=2 shiftwidth=2 tabstop=2

" install sqlparse
if executable('sqlformat')
  setlocal formatprg=sqlformat\ --reindent\ --keywords\ upper\ --wrap_after\ 120\ -
endif
