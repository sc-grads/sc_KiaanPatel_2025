/*
Random random = new Random();
int randomNumber = random.Next(1, 11);
Console.WriteLine("Give me a number");

string input = Console.ReadLine();
int num1 = 0;

bool isNumber = int.TryParse(input, out num1);

if (num1 == randomNumber)
{
    Console.WriteLine("You guessed right");
}
else
{
    Console.WriteLine("You guessed wrong");
}
*/
using System;

namespace Coding.Exercise
{
    public class Exercise
    {
        public static void Main(string [] args)
        {
            // TODO: Implement the calculator logic here
            int num1, num2;
            Console.WriteLine("Enter the first number.");
            num1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter the second number.");
            num2 = int.Parse(Console.ReadLine());
            string operators;
            Console.WriteLine("Choose an arithmetic operator.");
            operators = Console.ReadLine();

            if (operators.Trim().ToLower() == "+")
            {
                int sum = num1 + num2;
                Console.WriteLine($"The sum of {num1} and {num2} is {sum}");
            }
            else if (operators.Trim().ToLower() == "-")
            {
                int dif = num1 - num2;
                Console.WriteLine($"The difference of {num1} and {num2} is {dif}");
            }
            else if (operators.Trim().ToLower() == "*")
            {
                int mul = num1 * num2;
                Console.WriteLine($"The multiplication of {num1} and {num2} is {mul}");
            }
            else if (operators.Trim().ToLower() == "/" && num2 != 0)
            {
                int div = num1 / num2;
                Console.WriteLine($"The division of {num1} and {num2} is {div}");
            }
            else if (operators.Trim().ToLower() == "/" && num2 == 0)
            {
                Console.WriteLine("Please input a different number thats not 0 for division");
            }
            else
            {
                Console.WriteLine("Please enetr a valid operator");
            }
        }
    }
}