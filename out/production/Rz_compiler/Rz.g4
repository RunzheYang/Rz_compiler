grammar Rz;


prog
    :   (func_def    |   var_decl    |   class_decl)*   ;

/**
 DECLATATION AND DEFINATION
*/

func_def
    :   type ident '(' param_list? ')' compound_stmt
    ;

var_decl
    :   type init_declarator ';'
    ;

class_decl
    :   'class' ident enter_scope member_decl_list exit_scope
    ;

param_list
    :   type ident (',' type ident)*
    ;

member_decl_list
    :   (type ident ';')*
    ;

init_declarator
    :   ident (ASSIGN_OP initializer)?
    ;

initializer
    :   expr
    ;

type
    :   TYPE               #BASETYPE
    |   ident              #CLASSTYPE
    |   type '[' ']'       #ARRAYTYPE
    ;

ident   :   ID ;

enter_scope :   L_BRAKET    ;

exit_scope  :   R_BRAKET    ;

/**
 STATMENT
*/

stmt
    :   expr_stmt
    |   compound_stmt
    |   selec_stmt
    |   iteration_stmt
    |   jump_stmt
    ;

expr_stmt
    :   assign_expr? ';'
    ;

compound_stmt
    :   enter_scope (var_decl | stmt)* exit_scope
    ;

selec_stmt
    :   'if' '(' expr ')' (stmt | var_decl) ('else' (stmt | var_decl))?
    ;

iteration_stmt
    :   'while' '(' expr ')' (stmt | var_decl)
    |   'for' '(' expr? ';' expr? ';' expr? ')' (stmt | var_decl)
    ;

jump_stmt
    :   'continue' ';'         #Continue_jump
    |   'break' ';'            #Break_jump
    |   'return' expr? ';'     #Return_jump
    ;


/**
 EXPRESSION
*/

expr
    :   assign_expr
    ;

assign_expr
    :   expression
    |   unary_expr ASSIGN_OP assign_expr
    ;

creation_expr
    :   'new' TYPE     #NEWTYPE
    |   'new' ident    #NEWCLASSTYPE
    |   'new' array    #NEWARRAYTYPE
    |   unary_expr     #UNARYEXPR
    ;

array
    :   TYPE  '[' expression? ']'       #ARR_FINAL_BASE
    |   ident '[' expression? ']'       #ARR_FINAL_CLASS
    |   array '[' expression? ']'       #ARR_MORE
    ;

unary_expr
    :   postfix_expr
    |   '++'     unary_expr
    |   '--'     unary_expr
    |   ('~' | '!' | '+' | '-') unary_expr
    ;

expression
    :   creation_expr                                           #CREATION
    |   expression  op = ('*' | '/' | '%')          expression  #MULTI
    |   expression  op = ('+'|'-')                  expression  #ADDITIVE
    |   expression  op = ('<<' | '>>')              expression  #SHIFT
    |   expression  op = ('<' | '>' | '<=' | '>=')  expression  #RELATION
    |   expression  op = ('==' | '!=')              expression  #EQUALITY
    |   expression  op = '&'                        expression  #AND
    |   expression  op = '^'                        expression  #EXCLUSIVE_OR
    |   expression  op = '|'                        expression  #INCLUSIVE_OR
    |   expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression '&&' expression  #MULTI_LOGIC_AND
    |   expression  op = '&&'                       expression  #LOGIC_AND
    |   expression  op = '||'                       expression  #LOGIC_OR
    ;


postfix_expr
    :   primary_expr
    |   postfix_expr postfix
    ;

postfix
    :   '.' ident '(' arguments? ')'            #Build_in_Funtion
    |    '[' expr ']'                           #Subscript
    |    '(' arguments? ')'                     #FunctionCall
    |    '.' ident                              #Member
    |    '++'                                   #PlusPlus
    |    '--'                                   #MinusMinus
    ;

arguments   :   assign_expr (',' assign_expr)*  ;

primary_expr
    :   ident       #Primary_ident
    |   INT         #Primary_const_int
    |   BOOLCONST   #Primary_const_bool
    |   STRING      #Primary_const_string
    |   NULL        #Primary_null
    |   '(' expr ')'    #Primary_PexprP
    ;

/**
 TOKENS
*/

STRING  :   '"' (ESC | .)*? '"' ;

fragment ESC    : '\\' (["\\/bfnrt] | UNICODE)  ;

fragment UNICODE    : 'u' HEX HEX HEX HEX   ;

fragment HEX    : [0-9a-fA-F]   ;

L_BRAKET    :   '{' ;

R_BRAKET    :   '}' ;

TYPE   :   'void'  |   'bool'  |   'int'   |   'string'    ;

NULL    :   'null'  ;

BOOLCONST   :   'true'  |   'false' ;

ID  :   [a-zA-Z]+[a-zA-Z0-9_]*   ;

ASSIGN_OP   : '='   ;

INT :   [0-9]+  ;

ANNO    :   '//'(.*?)[\n\r]  -> skip;

WS :    [ \t\f\r\n]+ -> skip ;

