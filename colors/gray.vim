highlight clear

function s:highlight(group, bg, fg, style)
  let gui = a:style == '' ? '' : 'gui=' . a:style
  let fg = a:fg == '' ? '' : 'guifg=' . a:fg
  let bg = a:bg == '' ? '' : 'guibg=' . a:bg
  exec 'hi ' . a:group . ' ' . bg . ' ' . fg  . ' ' . gui
endfunction

let s:Color8 = '#4ed4b0'
let s:Color6 = '#ec9cb2'
let s:Color2 = '#9f73ea'
let s:Color5 = '#84D0FF'
let s:Color0 = '#ff5555'
let s:Color7 = '#6b7b80'
let s:Color14 = '#383b3d'
let s:Color3 = '#788a8b'
let s:Color9 = '#3b3f41'
let s:Color13 = '#2f3833'
let s:Color12 = '#324344'
let s:Color10 = '#FFFFFF'
let s:Color4 = '#61ead9'
let s:Color11 = '#35393b'
let s:Color1 = '#faeac8'
let s:Color15 = '#295043'
let s:Color16 = '#556c6a'
let s:Color17 = '#75cbff'

call s:highlight('Error', '', s:Color0, '')
call s:highlight('String', '', s:Color1, '')
call s:highlight('Keyword', '', s:Color2, '')
call s:highlight('Operator', '', s:Color3, '')
call s:highlight('Type', '', s:Color4, '')
call s:highlight('Function', '', s:Color5, '')
call s:highlight('Number', '', s:Color6, '')
call s:highlight('Comment', '', s:Color7, 'italic')
call s:highlight('StatusLine', s:Color9, s:Color8, '')
call s:highlight('WildMenu', s:Color11, s:Color10, '')
call s:highlight('Pmenu', s:Color11, s:Color10, '')
call s:highlight('PmenuSel', s:Color10, s:Color12, '')
call s:highlight('PmenuThumb', s:Color11, s:Color10, '')
call s:highlight('DiffAdd', s:Color13, '', '')
call s:highlight('DiffDelete', s:Color14, '', '')
call s:highlight('Normal', s:Color11, s:Color10, '')
call s:highlight('Visual', s:Color15, '', '')
call s:highlight('CursorLine', s:Color15, '', '')
call s:highlight('ColorColumn', s:Color15, '', '')
call s:highlight('SignColumn', s:Color11, '', '')
call s:highlight('LineNr', '', s:Color16, '')
call s:highlight('TabLine', s:Color11, '', '')
call s:highlight('TabLineSel', '', s:Color12, '')
call s:highlight('TabLineFill', s:Color11, '', '')
call s:highlight('TSPunctDelimiter', '', s:Color10, '')
call s:highlight('Pale', '', s:Color10, '')
call s:highlight('FunctionCall', '', s:Color17, '')
call s:highlight('Purple', '', s:Color2, '')

highlight! link NonText Comment
highlight! link TSParameterReference TSParameter
highlight! link TSNumber Number
highlight! link TSType Type
highlight! link TSTypeBuiltin Number
highlight! link TSLabel Type
highlight! link TSTag MyTag
highlight! link TSRepeat Repeat
highlight! link TSFunction Function
highlight! link TSPunctBracket MyTag
highlight! link TelescopeNormal Normal
highlight! link TSTagDelimiter Type
highlight! link Conditional Operator
highlight! link Macro Function
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link Operator Keyword

highlight! link @constant.builtin Number 
highlight! link @function.method.call FunctionCall
highlight! link @function.call FunctionCall
highlight! link @variable Pale
highlight! link @variable.member Type 
highlight! link @variable.builtin Purple
highlight! link @type.builtin Number
highlight! link @lsp.type.property.typescript Pale
highlight! link @lsp.type.parameter.typescript String

highlight! link TSProperty TSField
highlight! link Folded Comment
highlight! link TSOperator Operator
highlight! link CursorLineNr Identifier
highlight! link TSFuncMacro Macro
highlight! link Repeat Conditional
highlight! link TSString String
highlight! link TSField Constant
highlight! link TSParameter Constant
highlight! link Whitespace Comment
highlight! link TSConditional Conditional
highlight! link TSNamespace TSType
highlight! link TSKeyword Keyword
highlight! link TSConstant Constant
highlight! link TSComment Comment
highlight! link TSFloat Number
