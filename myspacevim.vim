function! myspacevim#before() abort
  call SpaceVim#logger#info('myspacevim#before called')
endfunction

let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

function! myspacevim#after() abort
  " ... other stuff here

  " set defx column to use icons and git
  call defx#custom#option('_', 'columns', 'git:mark:indent:icons:filename:type:size:time')
  Defx | Defx | wincmd p
endfunction
