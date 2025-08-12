/*
 * bool isRainy = true;
bool hasUmbrella = true;

if (!isRainy)
{
    Console.WriteLine("I'm wet!");
}
else if (isRainy && hasUmbrella)
{
    Console.WriteLine("It's raining and I'm dry");
}
else
{
    Console.WriteLine("I have an umbrella");
}



Console.WriteLine("How old are you?");
int age = int.Parse(Console.ReadLine());
bool isWithParents = false;

if (age > 18)
{
    Console.WriteLine("You can go clubbing!");
}
else if( age >= 13)
{
    Console.WriteLine("Are you with your parents? Y or N");
    string isWithParentsReply = Console.ReadLine();
    if (isWithParentsReply == "Y")
    {
        Console.WriteLine("You can go clubbing with your parents!");
    }
    else
    {
        Console.WriteLine("No clubbing for you!!!");
    }
}
else if (age <= 6)
{
    Console.WriteLine("Go party at home!");
}

*/
// See https://aka.ms/new-console-template for more information

string question1 = "What is the capital of Germany";
string answer1 = "Berlin";

string question2 = "What is 2+2";
string answer2 = "4";

string question3 = "What color do you get by mixing blue and yellow";
string answer3 = "Green";

int score = 0;

Console.WriteLine(question1);
string userAnswer1 = Console.ReadLine();
if (userAnswer1.Trim().ToLower() == answer1.ToLower())
{
    Console.WriteLine("Correct!");
    score = score + 1;
}
else
{
    Console.WriteLine("Wrong, the correct answer is: " + answer1);
}

Console.WriteLine(question2);
string userAnswer2 = Console.ReadLine();
if (userAnswer2.Trim() == answer2.Trim())
{
    Console.WriteLine("Correct!");
    score = score + 1;
}
else
{
    Console.WriteLine("Wrong, the correct answer is: " + answer2);
}


Console.WriteLine(question3);
string userAnswer3 = Console.ReadLine();
if (userAnswer3.Trim().ToLower() == answer3.ToLower())
{
    Console.WriteLine("Correct!");
    score = score + 1;
}
else
{
    Console.WriteLine("Wrong, the correct answer is: " + answer3);
}

Console.WriteLine($"Quiz completed! Your final score is: {score}/3");
if (score == 3)
{
    Console.WriteLine("Excellent! You got all the answers right!");
}
else if (score > 0)
{
    Console.WriteLine("Good Job, but keep learning!");
}
else
{
    Console.WriteLine("Try again and see if you can get some answers right next time!");
}




Console.ReadKey();
