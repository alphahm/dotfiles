set softtabstop=2 shiftwidth=2 tabstop=2

if executable('jq')
  setlocal formatprg=jq\ .
else
  setlocal formatprg=python3\ -m\ json.tool
endif
