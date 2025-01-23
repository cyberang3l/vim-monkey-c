if exists("b:current_syntax")
    finish
endif

syntax region   monkeyCString        start=/\v"/ skip=/\v\\./ end=/\v"/
syntax match    monkeyCCharacter     "L\='[^\\]'"
syntax keyword  monkeyCConsts        false true null
syntax keyword  monkeyCConditional   if else
syntax match    monkeyCInclude       "Toybox.\S\+"
syntax keyword  monkeyCKeyword       import using as extends
syntax keyword  monkeyCStatement     new return continue hidden break case default protected public instanceof
syntax keyword  monkeyCStorageClass  var const static enum
syntax keyword  monkeyCFunction      function
syntax keyword  monkeyCStructure     class module
syntax keyword  monkeyCRepeat        for while do switch
syntax keyword  monkeyCExceptions    throw try catch

syntax keyword  monkeyCType          Gfx System Lang Ui Timer Attention

syntax keyword  monkeyCConstant      COLOR_WHITE COLOR_LT_GRAY COLOR_DK_GRAY COLOR_BLACK COLOR_RED COLOR_DK_RED COLOR_ORANGE COLOR_YELLOW COLOR_GREEN COLOR_DK_GREEN COLOR_BLUE COLOR_DK_BLUE COLOR_PURPLE COLOR_PINK COLOR_TRANSPARENT
syntax keyword  monkeyCConstant      FONT_XTINY FONT_TINY FONT_SMALL FONT_MEDIUM FONT_LARGE FONT_NUMBER_MILD FONT_NUMBER_MEDIUM FONT_NUMBER_HOT FONT_NUMBER_THAI_HOT FONT_SYSTEM_XTINY FONT_SYSTEM_TINY FONT_SYSTEM_SMALL FONT_SYSTEM_MEDIUM FONT_SYSTEM_LARGE FONT_SYSTEM_NUMBER_MILD FONT_SYSTEM_NUMBER_MEDIUM FONT_SYSTEM_NUMBER_HOT FONT_SYSTEM_NUMBER_THAI_HOT
syntax keyword  monkeyCConstant      TEXT_JUSTIFY_RIGHT TEXT_JUSTIFY_CENTER TEXT_JUSTIFY_LEFT TEXT_JUSTIFY_VCENTER
syntax keyword  monkeyCConstant      ARC_COUNTER_CLOCKWISE ARC_CLOCKWISE

syntax match    monkeyCOperator      "\v\*"
syntax match    monkeyCOperator      "\v/"
syntax match    monkeyCOperator      "\v\+"
syntax match    monkeyCOperator      "\v-"
syntax match    monkeyCOperator      "\v\?"
syntax match    monkeyCOperator      "\v\%"
syntax match    monkeyCOperator      "\v\*\="
syntax match    monkeyCOperator      "\v/\="
syntax match    monkeyCOperator      "\v\+\="
syntax match    monkeyCOperator      "\v-\="
syntax match    monkeyCOperator      "\v\="
syntax match    monkeyCOperator      "\v\<\="
syntax match    monkeyCOperator      "\v\=\>"
syntax match    monkeyCOperator      "\v\!\="
syntax match    monkeyCOperator      "\v\>"
syntax match    monkeyCOperator      "\v\<"
syntax match    monkeyCNumber        "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syntax match    monkeyCNumber        "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syntax match    monkeyCNumber        "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syntax match    monkeyCNumber        "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"
syntax match    monkeyCLabel         ":\w\+"
syntax match    monkeyCHighlight     display contained "\<\(TODO\|NOTE\|FIXME\)\(:\)\?"
syntax cluster  monkeyCCommentGroup  contains=monkeyCHighlight
syntax match    monkeyCComment       "\v//.*$" contains=@monkeyCCommentGroup
syntax region   monkeyCCommentBlock  start="/\*" end="*/" contains=@monkeyCCommentGroup

highlight link  monkeyCString        String
highlight link  monkeyCCharacter     Character
highlight link  monkeyCConsts        Constant
highlight link  monkeyCConditional   Conditional
highlight link  monkeyCInclude       Include
highlight link  monkeyCKeyword       Keyword
highlight link  monkeyCStatement     Statement
highlight link  monkeyCStructure     Structure
highlight link  monkeyCStorageClass  StorageClass
highlight link  monkeyCType          Type
highlight link  monkeyCConstant      Constant
highlight link  monkeyCFunction      Function
highlight link  monkeyCOperator      Operator
highlight link  monkeyCNumber        Number
highlight link  monkeyCLabel         Label
highlight link  monkeyCComment       Comment
highlight link  monkeyCCommentBlock  Comment
highlight link  monkeyCHighlight     Todo
highlight link  monkeyCRepeat        Repeat
highlight link  monkeyCExceptions    Exception

let b:current_syntax = "monkey-c"
