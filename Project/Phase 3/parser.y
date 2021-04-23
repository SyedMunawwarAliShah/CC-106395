%{
  #include<stdio.h>
  int flag=0;
%}
  
%token NUMBER
  
%left '+' '-'
  
%left '*' '/' '%'
  
%left '(' ')'
  
%%
  
ArithmeticExpression: Exp{
  
         printf("\nResult=%d\n", $$);
  
         return 0;
  
        };
 Exp:E'+'E {$$=$1+$3;}
  
 |E'-'E {$$=$1-$3;}
  
 |E'*'E {$$=$1*$3;}
  
 |E'/'E {$$=$1/$3;}
  
 |E'%'E {$$=$1%$3;}
  
 |'('E')' {$$=$2;}
  
 | NUMBER {$$=$1;}
  
 ;
  
%%
  
//driver code
void main()
{
   printf("Enter Any Arithmetic Expression:\n");
  
   yyparse();
   if(flag==0)
   printf("\nEnter input is valid\n\n");
}
  
void yyerror()
{
   printf("\nEnter input is Invalid\n\n");
   flag=1;
}
