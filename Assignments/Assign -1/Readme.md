### MEMBERS ###
StdID | Name
------------ | -------------
**62367** | **Syed Munawwar Ali Shah** <!--this is the group leader in bold-->
62324 | Uzair Hasan

### 1. Regular expression ###
![RE](https://user-images.githubusercontent.com/51967342/107605304-9eab2100-6c54-11eb-976c-b5a4bde360c1.jpeg)

### 2. RE to NFA ###

![nfa](https://user-images.githubusercontent.com/62952262/107605575-708ff780-6be8-11eb-8bcd-d4549246ef23.png)

### 3. NFA to DFA ###


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
https://user-images.githubusercontent.com/51967342/107607506-475c7f00-6c5b-11eb-9db3-992561c685f3.mp4
