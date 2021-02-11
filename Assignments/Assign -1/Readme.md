### MEMBERS ###
StdID | Name
------------ | -------------
**62367** | **Syed Munawwar Ali Shah** <!--this is the group leader in bold-->
62324 | Uzair Hasan

### 1. Regular expression ###
![Screenshot (379)](https://user-images.githubusercontent.com/51967342/107612693-9b219500-6c68-11eb-9749-4a58cdc661c9.png)

### 2. RE to NFA ###

![nfa](https://user-images.githubusercontent.com/62952262/107611897-e05aae00-6bf9-11eb-8bb3-753727cafa10.png)

### 3. NFA to DFA ###

NFA STATES          DFA STATES      A                   B                  0                   1                 "-"                "."                   @

012                 A               4,5,6,7,8,9,        3,5,6,7,8,9,       -                   -                  -                  -                    -
                                    10,11,12,20         10,11,12,20
                                    
4,5,6,7,8,9,        B              13,19,20,6,7,        14,19,20,6,7,      15,19,20,6,7        16,19,20,6,7,      17,19,20,6,7,      18,19,20,6,7,        21,22,23,24,
10,11,12,20                        8,9,10,11,12         8,9,10,11,12       ,8,9,10,11,12       8,9,10,11,12       8,9,10,11,12       8,9,10,11,12         25,26,27,34

3,4,5,6,7,8,        C              D                    E                   15,19,20,6,7,      16,19,20,6,7,      17,19,20,6,7,      18,19,20,6,7,        21,22,23,24,
9,10,11,12,20                                                               8,9,10,11,12       8,9,10,11,12       8,9,10,11,12       8,9,10,11,12         25,26,27,34    
                                                                            
13,19,20,6,7,       D              D                    E                   F                  G                  H                  I                    J
8,9,10,11,12                                                                            

14,19,20,6,7,       E              D                    E                   F                  G                  H                  I
8,9,10,11,12                                                                

15,19,20,6,7,       F              D                    E                   F                  G                  H                  I   
8,9,10,11,12                                                                

16,19,20,6,7,       G              D                    E                   F                  G                  H                  I
8,9,10,11,12                                                                

17,19,20,6,7,       H              D                    E                   F                  G                  H                  I
8,9,10,11,12                                                                

18,19,20,6,7,       I              D                    E                   F                  G                  H                  I
8,9,10,11,12                                                                

21,22,23,24,        J              28,33,34,22,23,      29,33,34,22,23,     30,33,34,22,23,    31,33,34,23,23,                       32,33,34,22,23,
25,26,27,34                        24,25,26,27,21       24,25,26,27,21      24,25,26,27,21     24,25,26,27,21                        24,25,21,26,27

28,33,34,22,        K              K                    L                   M                  N                                     O
23,24,25,26,27,21                                                           
        
29,33,34,22,        L              K                    L                   M                  N                                     O
23,24,25,26,27,21                                                           

30,33,34,22,        M              K                    L                   M                  N                                     O
23,24,25,26,27,21                                                           

31,33,34,22         N              K                    L                   M                  N                                     O
,23,24,25,26,
27,21                                                                       

32,33,34,22,23,     O              K                   L                    M                  N                                     O
24,25,21,26,27                                                              


### 4. Code ###
static void Main(string[] args)
        {
            string expression = "(a + b)(a + b + 0 + 1 +.+ _)*@(a + b +.)*";
            string select = "ab01._@"; 

            Console.Write("\n\t\tThis is Regular Expression: ");
            Console.WriteLine(expression);
            Again: //)

            Console.Write("\nEnter string : ");
            string input = Console.ReadLine();
            if (input.Any(x => select.Contains(x)))
            {
                if (((input.Length == 8) && (input[0] == 'a' || input[1] == 'b') && (input[0] == 'b' || input[1] == 'a') 
                    && (input[input.Length - 1] == 'a' || input[input.Length - 1] == 'b') || (input[2] == '_' || input[4] == '@')))
                {
                    Console.WriteLine("Valid");
                }
                else if ((input[0] == '0' || input[0] == '1' || input[0] == '_' || input[0] == '@' || input[0] == '.'))  
                {
                    Console.WriteLine("Invalid");
                }
                else
                {
                    Console.WriteLine("String failed");
                }
            }
            goto Again;
     
        }
 ### Code video ###
https://user-images.githubusercontent.com/51967342/107607506-475c7f00-6c5b-11eb-9db3-992561c685f3.mp4
