
function! MoveNextIndentLine(direction)
  let ln = line('.')
  let ind = indent(ln)
  let indent_valid = strlen(getline(ln))
  let ln = ln + a:direction

  while((ln >= 1) && (ln <= line('$')))
    if (!indent_valid) && strlen(getline(ln)) 
        break
    else
      if (strlen(getline(ln)))
        if (indent(ln) <= ind)
          break
        endif
      endif
    endif
    let ln = ln + a:direction
  endwhile

  execute "normal ".ln."G"
endfunction

map <silent> ( :call MoveNextIndentLine(-1)<CR>
map <silent> ) :call MoveNextIndentLine(1)<CR>
vnoremap <silent> ( <Esc>:<C-U>call MoveNextIndentLine(-1)<CR>mzgv`z
vnoremap <silent> ) <Esc>:<C-U>call MoveNextIndentLine(1)<CR>mzgv`z
