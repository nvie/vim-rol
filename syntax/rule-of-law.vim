syntax match rolComment ,\v//.*$,
syntax region rolComment start=,\v/\*, end=,\v\*/, fold

" syntax match rolIdentifier /\v<[A-Za-z][A-Za-z0-9_]+>/

syntax keyword rolTodos TODO XXX FIXME NOTE contained containedin=rolComment
syntax keyword rolKeyword
    \ forall
    \ exists
    \ and
    \ or
    \ not
    \ null

syntax match rolOperator /\v\=\>/
syntax match rolOperator /\v\<\=\>/

syntax keyword rolRuleKeyword
    \ rule

" Literals
syntax match rolNumber /\v\d+(_\d+)*(\.\d+(_\d+)*)?/

" Too simplistic
syntax region rolString start=/\v"/ skip=/\v\\./ end=/\v"/ end=/\v$/ oneline

" Common syntax errors due to poor (JS-infected) muscle memories
syntax match rolCommonError /\v[=]\zs[=]/
syntax match rolCommonError /\v-[>]/
syntax match rolCommonError /\v'/

" Set highlights
highlight default link rolComment Comment
highlight default link rolTodos Todo
highlight default link rolKeyword Keyword
highlight default link rolRuleKeyword Keyword
highlight default link rolOperator Type

highlight default link rolNumber Number
highlight default link rolString String
highlight default link rolCommonError Error
