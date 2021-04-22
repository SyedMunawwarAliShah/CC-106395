%{
   #include <stdio.h>
	extern int yylex(void);
	extern int yylineno ;
	extern char* yytext ;
	void yyerror(char *);
%}
  
%token Number
  
%left '+' '-'
  
%left '*' '/' '%'
  
%left '(' ')'
  
  
/* Rule Section */
%%
ArithmeticExpression: E{
  
         printf("\nResult=%d\n", $$);
  
         return 0;
  
        };
 E:E'+'E {$$=$1+$3;}
  
 |E'-'E {$$=$1-$3;}
  
 |E'*'E {$$=$1*$3;}
  
 |E'/'E {$$=$1/$3;}
  
 |E'%'E {$$=$1%$3;}
  
 |'('E')' {$$=$2;}
  
 | Number {$$=$1;}
  
 ;                        

%%
void main()
{
   printf("\nEnter Any Arithmetic Expression:\n");
  
   yyparse();
   if(flag==0)
   printf("\nEntered arithmetic expression is Valid\n\n");
}  
void yyerror(char *s) {
	fprintf(stderr, "Error at Line no. : %d, %s\n", yylineno,yytext);
	flag=1;
}
