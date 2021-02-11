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

# NFA STATES #    

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
