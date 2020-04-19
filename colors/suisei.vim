" Suisei for Vim/NeoVim
" Author: Orchx <suisei@47.rs>
" Maintainer: Orchx <suisei@47.rs>

highlight clear
if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'Suisei'

function! s:Hi(group, fg, bg, attr)
    exe 'hi ' . a:group . ' guifg=' . a:fg . ' guibg=' . a:bg . ' gui=' . a:attr
endfunction

let s:n = 'NONE'

if &background ==# 'light'
else
    call s:Hi('Normal', '#908f95', '#1D242D', s:n)
    call s:Hi('LineNr', '#344457', s:n, s:n)
    call s:Hi('CursorLine', s:n, '#1d242d', s:n)
    call s:Hi('CursorLineNR', '#ad8a5e', s:n, s:n)
    call s:Hi('CursorColumn', s:n, '#242B34', s:n)
    call s:Hi('StatusLine', '#1D242D', '#1D242D', s:n)
    call s:Hi('NonText', '#1D242D', s:n, s:n)
    call s:Hi('VertSplit', '#1D242D', s:n, s:n)
    call s:Hi('ErrorMsg', '#1d242d', '#c76d81', s:n)
    call s:Hi('Pmenu', '#908f95', '#344457', s:n)
    call s:Hi('PmenuSel', '#908f95', '#546478', s:n)
    call s:Hi('Folded', '#546478', '#1D242D', s:n)

    call s:Hi('MatchParen', s:n, s:n, 'undercurl')
    call s:Hi('Visual', s:n, '#344457', s:n)

    call s:Hi('Comment', '#344457', s:n, 'italic')
    call s:Hi('Keyword', '#4d75bd', s:n, s:n)
    call s:Hi('Type', '#4d75bd', s:n, 'italic')
    call s:Hi('Function', '#4d75bd', s:n, s:n)
    call s:Hi('Statement', '#68678a', s:n, s:n)
    call s:Hi('Operator', '#435c8a', s:n, s:n)
    call s:Hi('Delimiter', '#908f95', s:n, s:n)
    call s:Hi('Identifier', '#bf7c7c', s:n, s:n)
    call s:Hi('Special', '#d4a56c', s:n, s:n)
    call s:Hi('Conditional', '#4d75bd', s:n, s:n)
    call s:Hi('Number', '#7d7bad', s:n, s:n)
    call s:Hi('Float', '#7d7bad', s:n, s:n)
    call s:Hi('String', '#6aa389', s:n, s:n)
    call s:Hi('Character', '#6cad89', s:n, s:n)
    call s:Hi('Macro', '#546478', s:n, s:n)
    call s:Hi('PreProc', '#546478', s:n, s:n)
    call s:Hi('Todo', '#6AA389', s:n, 'italic')

    " Support Rust.vim
    call s:Hi('rustCommentLineDoc', '#546478', s:n, 'italic')
    call s:Hi('rustModPath', '#908f95', s:n, 'italic')
    call s:Hi('rustAttribute', '#ad8a5e', s:n, s:n)
    call s:Hi('rustDerive', '#ad8a5e', s:n, s:n)
    call s:Hi('rustLifetime', '#916e6e', s:n, 'italic')
    call s:Hi('rustSelf', '#bf7c7c', s:n, s:n)
    call s:Hi('rustAssert', '#546478', s:n, s:n)
    call s:Hi('rustEscape', '#ad8a5e', s:n, s:n)
    call s:Hi('rustQuestionMark', '#4d75bd', s:n, s:n)
    call s:Hi('rustEnumVariant', '#bf7c7c', s:n, s:n)
    call s:Hi('rustUnsafeKeyword', '#c76d81', s:n, s:n)
    call s:Hi('rustPanic', '#546478', s:n, s:n)

    " Support Haskell
    call s:Hi('haskellDecl', '#d4a56c', s:n, s:n)
    call s:Hi('haskellType', '#7d7bad', s:n, s:n)
    call s:Hi('HaskellDerive', '#4d75bd', s:n, s:n)
    call s:Hi('haskellPragma', '#d4a56c', s:n, s:n)

    " Support NERDTree
    call s:Hi('NERDTreeDir', '#546478', s:n, s:n)
    call s:Hi('NERDTreeDirSlash', '#546478', s:n, s:n)
    call s:Hi('NERDTreeCWD', '#344457', s:n, s:n)
    call s:Hi('NERDTreeFile', '#546478', s:n, s:n)
    call s:Hi('NERDTreeOpenable', '#344457', s:n, s:n)
    call s:Hi('NERDTreeClosable', '#546478', s:n, s:n)
    call s:Hi('NERDTreeExecFile', '#916e6e', s:n, s:n)

    " Support GitGutter
    call s:Hi('GitGutterAdd', '#6aa389', s:n, s:n)
    call s:Hi('GitGutterChange', '#ad8a5e', s:n, s:n)
    call s:Hi('GitGutterDelete', '#995665', s:n, s:n)
    call s:Hi('GitGutterChangeDelete', '#916e6e', s:n, s:n)

    " Support Coc.nvim
    call s:Hi('CocErrorSign', '#995665', s:n, s:n)
endif
