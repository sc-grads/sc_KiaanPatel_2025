
/*Console.WriteLine("Enter in the first number.");
int num1 = int.Parse(Console.ReadLine());

Console.WriteLine("Enter in the second number.");
int num2 = int.Parse(Console.ReadLine());

int sumOfNums = num1 + num2;

//string concatenation
Console.WriteLine("The sum of " + num1 + " and " + num2 + " is: " + sumOfNums);

//string interpolation
Console.WriteLine($"The sum of {num1} and {num2} is {sumOfNums}");
*/

Console.WriteLine("Enter in the first number.");
double num1 = double.Parse(Console.ReadLine());

Console.WriteLine("Enter in the second number.");
double num2 = double.Parse(Console.ReadLine());

double sumOfNums = num1 + num2;

//string concatenation
Console.WriteLine("The sum of " + num1 + " and " + num2 + " is: " + sumOfNums);

//string interpolation
Console.WriteLine($"The sum of {num1} and {num2} is {sumOfNums}");


//implicit conversion
int myInt = 13;
double myDouble = myInt;

long myLong = myInt;
myLong = 1321426854;

//explicit conversion
int myInt2 = (int)myLong;
Console.WriteLine(myInt2);