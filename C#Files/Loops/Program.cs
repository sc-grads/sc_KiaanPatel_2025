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
*/

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