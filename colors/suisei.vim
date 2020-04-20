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
let s:s = &background

let s:p = {}
let s:p.bg = { 'light': '#F0F0F4', 'dark': '#1d242d' }
let s:p.fg = { 'light': '#102C4E', 'dark': '#908f95' }
let s:p.hint1 = { 'light': '#E4E4E8', 'dark': '#242B34' }
let s:p.hint2 = { 'light': '#D2D2D9', 'dark': '#353f4d' }
let s:p.gray1 = { 'light': '#a0a0ad', 'dark': '#344457' }
let s:p.gray2 = { 'light': '#676880', 'dark': '#546478' }
let s:p.green1 = { 'light': '#5e8d89', 'dark': '#6aa389' }
let s:p.green2 = { 'light': '#718a7d', 'dark': '#6cad89' }
let s:p.blue1 = { 'light': '#3c5685', 'dark': '#435c8a' }
let s:p.blue2 = { 'light': '#4969a3', 'dark': '#4d75bd' }
let s:p.yellow1 = { 'light': '#ba8f4c', 'dark': '#ad8a5e' }
let s:p.yellow2 = { 'light': '#d9a250', 'dark': '#d4a56c' }
let s:p.purple1 = { 'light': '#565163', 'dark': '#68678a' }
let s:p.purple2 = { 'light': '#7C758F', 'dark': '#7d7bad' }
let s:p.brown1 = { 'light': '#634f4f', 'dark': '#916e6e' }
let s:p.brown2 = { 'light': '#a17f7f', 'dark': '#bf7c7c' }
let s:p.red1 = { 'light': '#995757', 'dark': '#995665' }
let s:p.red2 = { 'light': '#c47474', 'dark': '#c76d81' }


call s:Hi('Normal', s:p.fg[s:s], s:p.bg[s:s], s:n)
call s:Hi('LineNr', s:p.hint2[s:s], s:n, s:n)
call s:Hi('Cursor', s:p.fg[s:s], s:n, s:n)
call s:Hi('CursorLineNR', s:p.yellow1[s:s], s:n, s:n)
call s:Hi('CursorColumn', s:n, s:p.hint1[s:s], s:n)
call s:Hi('StatusLine', s:p.bg[s:s], s:p.bg[s:s], s:n)
call s:Hi('NonText', s:p.bg[s:s], s:n, s:n)
call s:Hi('VertSplit', s:p.bg[s:s], s:n, s:n)
call s:Hi('ErrorMsg', s:p.bg[s:s], s:p.red2[s:s], s:n)
call s:Hi('Error', s:p.bg[s:s], s:p.red2[s:s], s:n)
call s:Hi('Pmenu', s:p.fg[s:s], s:p.hint1[s:s], s:n)
call s:Hi('PmenuSel', s:p.fg[s:s], s:p.hint2[s:s], s:n)
call s:Hi('Folded', s:p.gray2[s:s], s:p.bg[s:s], s:n)
call s:Hi('Search', s:n, s:p.hint1[s:s], s:n)
call s:Hi('IncSearch', s:n, s:p.hint2[s:s], s:n)
call s:Hi('Substitute', s:n, s:p.hint2[s:s], s:n)
call s:Hi('MsgArea', s:p.fg[s:s], s:n, s:n)
call s:Hi('MoreMsg', s:p.purple1[s:s], s:n, s:n)
call s:Hi('Question', s:p.purple1[s:s], s:n, s:n)
call s:Hi('SpecialKey', s:p.blue1[s:s], s:n, s:n)
call s:Hi('StatusLine', s:p.bg[s:s], s:p.bg[s:s], s:n)
call s:Hi('TabLine', s:p.fg[s:s], s:p.bg[s:s], s:n)
call s:Hi('TabLineFill', s:p.fg[s:s], s:p.bg[s:s], s:n)
call s:Hi('TabLineSel', s:p.fg[s:s], s:p.bg[s:s], s:n)
call s:Hi('PmenuSbar', s:n, s:p.hint1[s:s], s:n)
call s:Hi('PmenuThumb', s:n, s:p.hint2[s:s], s:n)
call s:Hi('Directory', s:p.gray2[s:s], s:n, s:n)

call s:Hi('MatchParen', s:n, s:n, 'undercurl')
call s:Hi('Visual', s:n, s:p.hint1[s:s], s:n)

call s:Hi('Comment', s:p.gray1[s:s], s:n, 'italic')
call s:Hi('Keyword', s:p.blue2[s:s], s:n, s:n)
call s:Hi('Type', s:p.blue2[s:s], s:n, 'italic')
call s:Hi('Function', s:p.blue2[s:s], s:n, s:n)
call s:Hi('Statement', s:p.purple1[s:s], s:n, s:n)
call s:Hi('Operator', s:p.blue1[s:s], s:n, s:n)
call s:Hi('Delimiter', s:p.fg[s:s], s:n, s:n)
call s:Hi('Identifier', s:p.brown2[s:s], s:n, s:n)
call s:Hi('Boolean', s:p.brown2[s:s], s:n, s:n)
call s:Hi('Special', s:p.yellow2[s:s], s:n, s:n)
call s:Hi('Conditional', s:p.blue2[s:s], s:n, s:n)
call s:Hi('Constant', s:p.brown2[s:s], s:n, s:n)
call s:Hi('Number', s:p.purple2[s:s], s:n, s:n)
call s:Hi('Float', s:p.purple2[s:s], s:n, s:n)
call s:Hi('String', s:p.green1[s:s], s:n, s:n)
call s:Hi('Character', s:p.green2[s:s], s:n, s:n)
call s:Hi('Macro', s:p.gray2[s:s], s:n, s:n)
call s:Hi('PreProc', s:p.gray2[s:s], s:n, s:n)
call s:Hi('Todo', s:p.green1[s:s], s:n, 'italic')
call s:Hi('Title', s:p.yellow1[s:s], s:n, s:n)

" Support Rust.vim
call s:Hi('rustCommentLineDoc', s:p.gray2[s:s], s:n, s:n)
call s:Hi('rustModPath', s:p.fg[s:s], s:n, s:n)
call s:Hi('rustAttribute', s:p.yellow1[s:s], s:n, s:n)
call s:Hi('rustDerive', s:p.yellow1[s:s], s:n, s:n)
call s:Hi('rustLifetime', s:p.brown1[s:s], s:n, 'italic')
call s:Hi('rustSelf', s:p.brown2[s:s], s:n, s:n)
call s:Hi('rustAssert', s:p.gray2[s:s], s:n, s:n)
call s:Hi('rustEscape', s:p.yellow1[s:s], s:n, s:n)
call s:Hi('rustQuestionMark', s:p.blue2[s:s], s:n, s:n)
call s:Hi('rustEnumVariant', s:p.brown2[s:s], s:n, s:n)
call s:Hi('rustUnsafeKeyword', s:p.red2[s:s], s:n, s:n)
call s:Hi('rustPanic', s:p.gray2[s:s], s:n, s:n)

" Support Haskell
call s:Hi('haskellDecl', s:p.yellow2[s:s], s:n, s:n)
call s:Hi('haskellType', s:p.purple2[s:s], s:n, s:n)
call s:Hi('HaskellDerive', s:p.blue2[s:s], s:n, s:n)
call s:Hi('haskellPragma', s:p.yellow2[s:s], s:n, s:n)

" Support NERDTree
call s:Hi('NERDTreeDir', s:p.gray2[s:s], s:n, s:n)
call s:Hi('NERDTreeDirSlash', s:p.gray2[s:s], s:n, s:n)
call s:Hi('NERDTreeCWD', s:p.gray1[s:s], s:n, s:n)
call s:Hi('NERDTreeFile', s:p.gray2[s:s], s:n, s:n)
call s:Hi('NERDTreeOpenable', s:p.gray1[s:s], s:n, s:n)
call s:Hi('NERDTreeClosable', s:p.gray2[s:s], s:n, s:n)
call s:Hi('NERDTreeExecFile', s:p.blue1[s:s], s:n, s:n)

" Support GitGutter
call s:Hi('GitGutterAdd', s:p.green1[s:s], s:n, s:n)
call s:Hi('GitGutterChange', s:p.yellow1[s:s], s:n, s:n)
call s:Hi('GitGutterDelete', s:p.red1[s:s], s:n, s:n)
call s:Hi('GitGutterChangeDelete', s:p.brown1[s:s], s:n, s:n)

" Support Coc.nvim
call s:Hi('CocErrorSign', s:p.red1[s:s], s:n, s:n)

" Support Vim-Signature
call s:Hi('SignatureMarkText', s:p.purple2[s:s], s:n, s:n)
