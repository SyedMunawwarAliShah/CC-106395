# CC Spring 2021: Project Phase 1 #
## PROJECT MEMBERS ##
StdID | Name
------------ | -------------
**62367** | **Syed Munawwar Ali Shah** 
62324 | Uzair Hasan

## Language Selected ##

Mini Pascal

## Example of main constructs ##
```
int main(){

} 
```
## Example of for loop constructs ##
```
for(int i=0;i<3;i++)
{
   printf("Welcome to CC Project");
}
```
## Example of if condition constructs ##
```
if (number < 0) 
{
   printf("You entered wrong no");
}
```
## Example of while loop constructs ##
```
 while( a < 20 ) 
{
   printf("value of a: %d\n", a);
   a++;
}   
```
## Example of array constructs ##
```
int marks[5] = {19, 10, 8, 17, 9}
```


## Lexical Specification ##

```
<id> ::= <letter> { <letter> | <digit> | "_" }
<literal> ::= <integer literal> | <real literal> | <string literal>
<integer literal> ::= <digits>
<digits> ::= <digit> { <digit> }
<real literal> ::= <digits> "." <digits> [ "e" [ <sign> ] <digits>]
<string literal> ::= "\"" { < a char or escape char > } "\""
<letter> ::= a | b | c | d | e | f | g | h | i | j | k | l | m | n | o |
p | q | r | s | t | u | v | w | x | y | z | A | B | C |
D | E | F | G | H | I | J | K | L | M | N | O | P
| Q | R | S | T | U | V | W | X | Y | Z
<digit> ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
<special symbol or keyword> ::= "+" | "-" | "*" | "%" | "=" | "<>" | "<" | ">" | "<=" | ">=" |
"(" | ")" | "[" | "]" | ":=" | "." | "," | ";" | ":" | "or" |
"and" | "not" | "if" | "then" | "else" | "of" | "while" | "do" |
"begin" | "end" | "var" | "array" | "procedure" |
"function" | "program" | "assert"
<predefined id> ::= "Boolean" | "false" | "integer" | "read" | "real" | "size" | "string" | "true" | "writeln"







<constant> ::=	<integer constant> | <character constant> | <constant identifier>
<constant identifier> ::=	<identifier>
<identifier> ::=	<letter> { <letter or digit> }
<letter or digit> ::=	<letter> | <digit>
<integer constant> ::=	<digit> { <digit> }
<character constant> ::=	'< any character other than ' >'  |  ''''
<letter> ::=	a | b | c | d | e | f | g | h | i | j | k | l | m | n | o |
p | q | r | s | t | u | v | w | x | y | z | A | B | C |
D | E | F | G | H | I | J | K | L | M | N | O | P
| Q | R | S | T | U | V | W | X | Y | Z
<digit> ::=	0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
<special symbol> ::=	+ | - | * | = | <> | < | > | <= | >= |
( | ) | [ | ] | := | . | , | ; | : | .. | div | or |
and | not | if | then | else | of | while | do |
begin | end | read | write | var | array |
procedure | program
<predefined identifier> ::=	integer | Boolean | true | false

```

## Language CFG ##
```
<program> ::= "program" <id> ";" <block> "."
<declaration> ::= "var" <id> { , <id> } ":" <type> |
"procedure" <id> "(" parameters ")" ";" <block> |
"function" <id> "(" parameters ")" ":" <type> ";" <block>
<parameters> ::= [ "var" ] <id> ":" <type> { "," [ "var" ] <id> ":" <type> } | <empty>
<type> ::= <simple type> | <array type>
<array type> ::= "array" "[" [<integer expr>] "]" "of" <simple type>
<simple type> ::= <type id>
<block> ::= "begin" <statement> { ";" <statement> } [ ";" ] "end"
<statement> ::= <simple statement> | <structured statement> | <declaration>
<empty> ::=
<simple statement> ::= <assignment statement> | <call> | <return statement> |
< read statement> | <write statement> | <assert statement>
<assignment statement> ::= <variable> ":=" <expr>
<call> ::= <id> "(" <arguments> ")"
<arguments> ::= expr { "," expr } | <empty>
<return statement> ::= "return" [ expr ]
<read statement> ::= "read" "(" <variable> { "," <variable> } ")"
<write statement> ::= "writeln" "(" <arguments> ")"
<assert statement> ::= "assert" "(" <Boolean expr> ")"
<structured statement> ::= <block> | <if statement> | <while statement>
<if statement> ::= "if" <Boolean expr> "then" <statement> |
"if" <Boolean expr> "then" <statement> "else" <statement>
<while statement> ::= "while" <Boolean expr> "do" <statement> 
<expr> ::= <simple expr> |
<simple expr> <relational operator> <simple expr>
<simple expr> ::= [ <sign> ] <term> { <adding operator> <term> }
<term> ::= <factor> { <multiplying operator> <factor> }
<factor> ::= <call> | <variable> | <literal> | "(" <expr> ")" | "not" <factor> | < factor> "." "size"
<variable> ::= <variable id> [ "[" <integer expr> "]" ]
<relational operator> ::= "=" | "<>" | "<" | "<=" | ">=" | ">"
<sign> ::= "+" | "-"
<adding operator> ::= "+" | "-" | "or"
<multiplying operator> ::= "*" | "/" | "%" | "and" 
```
