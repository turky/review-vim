if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case ignore

syntax match reviewComment	"^#@#.\*"
syntax match reviewHeadings	"^=\+ .\+$"
syntax match reviewInlineTag	"@<[^}]\+}"
syntax match reviewSectionStart	"^\/\/[a-z]\+{"
syntax match reviewTitledSectionStart	"^\/\/[a-z]\+\[.\+\]\[.\+\]{\="
syntax match reviewSectionEnd	"^\/\/}"
syntax match reviewListItem	"^ \*\+ "
syntax match reviewNumberedListItem	"^ [0-9]\+. "
syntax match reviewDeclaredListItem	"^ : .\+\n"
syntax match reviewColumn	"^=\+\[/\=column\]"

hi def link reviewComment	Comment
hi def link reviewHeadings	String
hi def link reviewColumn	String
hi def link reviewSectionStart	Type
hi def link reviewTitledSectionStart	Type
hi def link reviewSectionEnd	Type
hi def link reviewListItem	Keyword	
hi def link reviewNumberedListItem	Keyword	
hi def link reviewDeclaredListItem	Keyword	
hi def link reviewInlineTag	Keyword
