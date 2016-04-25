grammar Chameleon;

prog : (model | NEWLINE | words)+
;


model : 'model' ID '{'
    property_line+
  '}'
;


property_line: comment |property_line_words | NEWLINE
;

words :'/*' NameStartChar+ '*/'
;


property_line_words: (c_property | array_property) NEWLINE
;

c_property: c_property_name | c_property_second_name
;


c_property_name: p_type ID
;

c_property_second_name: p_type ID '['ID']'
;

array_property: array_property_name | array_property_second_name
;

array_property_name:'array' p_type ID
;

array_property_second_name: 'array' p_type ID '['ID']'
;


p_type: T_INT | T_String | T_Int64 | T_Int32 | T_Int8 | T_Int16 | T_UInt8 |T_UInt16 | T_UInt32 | T_UInt64 |ID
;

T_INT: 'int'
;

T_String: 'string'
;

T_Int64: 'int64'
;

T_Int32: 'int32'
;

T_Int8: 'int8'
;

T_Int16: 'int16'
;

T_UInt8: 'uint8'
;

T_UInt16: 'uint16'
;

T_UInt32: 'uint32'
;

T_UInt64: 'uint64'
;


ID : ('a'..'z' |'A'..'Z' |'_' | '0'..'9')+ ;
INT : '0'..'9' + ;
NEWLINE:'\r' ? '\n' ;
WS : (' ' |'\t' |'\n' |'\r' ) ->skip;

NameStartChar  :   'A'..'Z'
    |   'a'..'z'
    |   '0'..'9'
    |   '_'
    |   '\u00C0'..'\u00D6'
    |   '\u00D8'..'\u00F6'
    |   '\u00F8'..'\u02FF'
    |   '\u0370'..'\u037D'
    |   '\u037F'..'\u1FFF'
    |   '\u200C'..'\u200D'
    |   '\u2070'..'\u218F'
    |   '\u2C00'..'\u2FEF'
    |   '\u3001'..'\uD7FF'
    |   '\uF900'..'\uFDCF'
    |   '\uFDF0'..'\uFFFD'
    ;

comment : COMMENT
;

COMMENT
  :   ( '//' ~[\r\n]* '\r'? '\n'
      | '/*' .*? '*/'
      )
  ;
