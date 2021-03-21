# CC Spring 2021: Project Phase 1 #
## PROJECT MEMBERS ##
StdID | Name
------------ | -------------
**62367** | **Syed Munawwar Ali Shah** 
62324 | Uzair Hasan

## Language Selected ##

Mini C 

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


## Lexical Specification##
IF
ELSE
{    
}
ID := (LETTER|"\_") + (LETTER|"\_"|DIGIT)*
REAL :=

## Language CFG ##
PROG -> LIB FUNCTION | ;
