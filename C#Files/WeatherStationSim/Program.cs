using System;
using System.Linq; // Added for Max() extension method

namespace WeatherStationSim
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Enter number of days to simulate: ");
            if (!int.TryParse(Console.ReadLine(), out int days) || days <= 0)
            {
                Console.WriteLine("Please enter a valid positive number.");
                return;
            }

            int[] temp = new int[days];
            string[] conditions = { "Sunny", "Rainy", "Cloudy", "Snowy" };
            string[] weatherConditions = new string[days];

            Random random = new Random();
            for (int i = 0; i < days; i++)
            {
                temp[i] = random.Next(-10, 40); // Generates random temp between -10 and 39
                weatherConditions[i] = conditions[random.Next(conditions.Length)]; // Assigns a random condition
            }

            Console.WriteLine("Average temp is: " + avgTemp(temp));
            Console.WriteLine($"The max temp was {temp.Max()}"); // Uses LINQ Max()
            Console.WriteLine($"The min temp was {min(temp)}"); // Fixed method name
            Console.WriteLine($"Most common condition is {mostCommonCondition(weatherConditions)}"); // Fixed method name and parameter
        }

        static double avgTemp(int[] temp)
        {
            double sum = 0;

            for (int i = 0; i < temp.Length; i++)
            {
                sum += temp[i];
            }

            double avg = sum / temp.Length;

            return avg;
        }

        static int min(int[] temp)
        {
            int min = temp[0];

            for (int i = 0; i < temp.Length; i++)
            {
                if (temp[i] < min)
                {
                    min = temp[i];
                }
            }
            return min;
        }

        static string mostCommonCondition(string[] weatherConditions)
        {
            string mostCommon = weatherConditions[0];
            int maxCount = 0;

            for (int i = 0; i < weatherConditions.Length; i++)
            {
                int currentCount = 0;
                for (int j = 0; j < weatherConditions.Length; j++)
                {
                    if (weatherConditions[j] == weatherConditions[i])
                    {
                        currentCount++;
                    }
                }
                if (currentCount > maxCount)
                {
                    maxCount = currentCount;
                    mostCommon = weatherConditions[i];
                }
            }
            return mostCommon;
        }
    }
}