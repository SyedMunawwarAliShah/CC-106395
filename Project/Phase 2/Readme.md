This is Project Phase 2 which is Flex implementation of lexical specifications are mentioned below.

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
