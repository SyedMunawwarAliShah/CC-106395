
%{
#define ID 1
%}

digit   [0-9]
letter [a-z]|[A-Z]


%%
[[a-z]|[A-Z]|[0-9]|"_"]*           printf("%d %s\n",ID,yytext);

	
%%
  

int yywrap(){}

int main(){
  
yylex();
printf("\nNumber of Captial letters ");	
  
}
