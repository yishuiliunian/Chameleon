grammar Lexical;
options { language = Python2; }

model     : MODEL ':' stmtList  'end'
          ;


stmtList  : stmt*
          ;
stmt      : TYPE ID NEWLINE
          ;


TYPE      :  STRING
          ;
STRING    : 'string'
          ;


MODEL     : 'model'
          ;

ID        : ('a'..'z' |'A'..'Z' )('a'..'z' |'A'..'Z'|'0'..'9')*
          ;
NUMBER    : ('0'..'9')+ ('.' ('0'..'9')+)?
          ;
NEWLINE   :'\r' ? '\n'
          ;
WS        : (' ' |'\t' |'\n' |'\r' )+
          ;
BL        : (' '|'\t' )+
          ;
