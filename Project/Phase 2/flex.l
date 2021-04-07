
%{
#define ID 1
#define Keywords_OP 2
#define SPACE 3
#define PREDEFINE_ID 4
#define LITERAL 5


%}

digit   [0-9]
letter [a-z]|[A-Z]
integerliteral  [0-9]
realliteral [0-9.0-9e-+0-9]


%%

[[a-z]|[A-Z]|[0-9]|"_"]*           printf("%d %s\n",ID,yytext);
"+"|"-"|"*"|"%"|"="|"<>"|"<"|">"|"<="|">="|"("|")"|"["|"]"|":="|"."|","|";"|":"|"or"|"and"|"not"|"if"|"then"|"else"|"of"|"while"|"do"|"begin"|"end"|"var"|"array"|"procedure"|"function"|"program"|"assert"          printf("%d %s\n",Keywords_OP,yytext); 

[" "]     printf("%d %s\n",SPACE,yytext); 

"Boolean"|"false"|"integer"|"read"|"real"|"size"|"string"|"true"|"writeln"	printf("%d %s\n",PREDEFINE_ID,yytext);


[0-9]*|[0-9]*"."[0-9]*e[-|+][0-9]*|[a-z]*	printf("%d %s\n",LITERAL,yytext); 	

%%
  

int yywrap(){}

int main(){
  
yylex();
printf("\nNumber of Captial letters ");	
  
}
