grammar Chameleon;
prog : (model | NEWLINE)+
;


model : 'model' ID '{'
  property_line+
  '}'
;

property_line: property_line_words | NEWLINE
;

property_line_words: c_property NEWLINE
;

c_property: p_type ID
;

p_type: T_INT | T_String | T_Int64 | T_Int32 | ID
;

T_INT: 'int'
;

T_String: 'string'
;

T_Int64: 'int64'
;

T_Int32: 'int32'
;



ID : ('a'..'z' |'A'..'Z')+ ;
INT : '0'..'9' + ;
NEWLINE:'\r' ? '\n' ;
WS : (' ' |'\t' |'\n' |'\r' ) ->skip;
