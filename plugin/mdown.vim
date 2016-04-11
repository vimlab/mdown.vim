

function! s:initCommands()
  command! -buffer Mpreview call g:MdownPreview()
  " au! CursorHold,CursorHoldI,CursorMoved,CursorMovedI <buffer> call g:MdownReload()
  " au! CursorHold,BufWrite,InsertLeave <buffer> call g:MdownReload()
  au! CursorMovedI,InsertLeave <buffer> call g:MdownReload()
endfunction

autocmd! FileType markdown call s:initCommands()
