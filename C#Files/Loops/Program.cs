/*
//counting up with for loop
for (int i = 0; i <= 10; i++)
{
    Console.WriteLine("Counter is:" + i);
}

//counting down
for (int i = 10; i >= 0; i--)
{
    Console.WriteLine("Counter is:" + i);
}


//rocket landing
string rocket = "     |\r\n     |\r\n    / \\\r\n   / _ \\\r\n  |.o '.|\r\n  |'._.'|\r\n  |     |\r\n ,'|  | |`.\r\n/  |  | |  \\\r\n|,-'--|--'-.|";

for (int counter = 10; counter >= 0; counter--)
{
    Console.Clear();
    Console.WriteLine("Counter is " + counter);
    Console.WriteLine(rocket);
    rocket = "\r\n" + rocket;
    Thread.Sleep(100);
}
Console.WriteLine("The Rocket has Landed!");

Console.ReadKey();


int currentScore;
int sum = 0;
int counter = 0;
// do-while loop is a post-test loop

do
{
    Console.WriteLine("Enter your students score. Enter -1 to finish!");
    currentScore = int.Parse(Console.ReadLine());
    if (currentScore != -1)
    {
        sum = sum + currentScore;
        counter++;
    }

} while (currentScore != -1);

int average = sum / counter;

Console.WriteLine("The average is: " + average);
Console.ReadKey();
*/

//arrays
using System.Collections.Concurrent;

int num1 = 0;
int num2 = 0;
int num3 = 0;
int num4 = 0;
int num5 = 0;

//declare array
int[] arr = new int[5];

arr[0] = 5;
arr[1] = 12;
arr[2] = 13;
arr[3] = 14;
arr[4] = 15;

Console.WriteLine(arr[4]);

int[] arrNew = [5,6,7,9,10];

Console.WriteLine(arrNew[2]);

string[] weekdays = ["Mon", "Tues", "Wed", "Thur", "Fri"];

for (int i = 0; i < weekdays.Length; i++)
{
    Console.WriteLine(weekdays[i]);
}
Console.WriteLine("\n");

foreach (var item in weekdays)
{
    Console.WriteLine(item);
}

Console.WriteLine("Array lenght: " + weekdays.Length);