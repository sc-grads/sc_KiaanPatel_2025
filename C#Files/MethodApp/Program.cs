//defining method
void myFirstMethod()
{
    Console.WriteLine("Method executed");
}

//calling method
myFirstMethod();


void WriteSomething()
{
    Console.WriteLine("I'm writing something");
}

//writing something specific
//here we have a parameter
void WriteSomethingSpecific(string mystring)
{
    Console.WriteLine("You wrote this: " + mystring);
}

//here we have the argument
WriteSomethingSpecific("Hello");


//when using retunr, have to define datatype of method
int addValues(int num1, int num2)
{
    int sum = num1 + num2;
    return sum;
}
Console.WriteLine("Enter a number");
int num = int.Parse(Console.ReadLine());
Console.WriteLine(addValues(num, 5));

int subtractValues(int num1, int num2)
{
    int result = num1 - num2;
    return result;
}
Console.WriteLine("Enter a number");
int numSub = int.Parse(Console.ReadLine());
Console.WriteLine(subtractValues(numSub, 5));