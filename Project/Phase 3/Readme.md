
# CC 106395: Compiler Construction #
<!-- Replace XX with your course ID-->
### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**62367** | **Syed Munawwar Ali Shah** <!--this is the group leader in bold-->
62324 | Uzair Hasan
<!-- Replace name and student ids with acutally group member names and ids-->
## Project Description ##
In this project we made a compiler construction and divided into phases. Firstly we select a language, secondly lexical grammer implement in a flex and lastly parser will be made in the last phase.

## Sample Language Used ##
We selected a mini Pascal for the compiler. Here are some code examples
```
 program forLoop;
var
   a: integer;

begin
   for a := 10  to 20 do
   
   begin
      writeln('value of a: ', a);
   end;
end.  
```
```
type
   vector = array [ 1..25] of real;
var
   velocity: vector;
```
### Lexical Specification ###
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

```
### Grammar ###
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

## Problems Faced ##
In this project we dont understand how to made a compiler and their phases. Than we searched on a google and youtube to find the solution of compiler construction.
Some problems are listed below

### Problem 1: I don't know how to select language and find a lexical specification ###
Many languages we have seen but couldn't understand the lexical grammer then we saw a mini pascal language their lexical specification are visible and clear to understand thats why we choosed this language.

### Problem 2: I don't know how to use flex ###
When we completed our phase 1 which is language selection that after we have to use that language in a flex and it would be difficult for us because we don't know how to use flex and run. We searched on a google and saw a videos regarding flex problems and then we have got the concept about the flex.

### Problem 3: What is yacc i don't know how to use it ###
We have read a papers and some tutorials to get the idea about the yacc program.

## Video Demo ##
https://user-images.githubusercontent.com/51967342/115963640-bd108100-a50f-11eb-962e-20288782ed09.mp4


## References ##
- (https:google.com), references, papers, code samples.
- https:youtube.com

