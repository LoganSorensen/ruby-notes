# a colon indicates that something is a symbol
:my_symbol

# symbols are stored in memory differently than strings
"string" == "string" #=> true

"string".object_id == "string".object_id #=> false

:symbol.object_id == :symbol.object_id #=> true