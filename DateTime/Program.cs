using System;
using System.IO;

namespace Coding.Exercise
{
    public struct DateTimeCalculator
    {
        public DateTimeCalculator()
        {
        }

        public void DisplayDateInfo()
        {
            // Display birthday
            DateTime birthday = new DateTime(1988, 5, 31);
            Console.WriteLine($"My birthday is: {birthday:yyyy-MM-dd}");

            // Display current date
            DateTime today = DateTime.Today;
            Console.WriteLine($"Today is: {today:yyyy-MM-dd}");

            // Display current time
            DateTime now = DateTime.Now;
            Console.WriteLine($"Current time is: {now:HH:mm:ss}");
            Console.WriteLine($"Time formatted: {now.Hour} o'clock, {now.Minute} minutes, {now.Second} seconds");

            // Display tomorrow
            DateTime tomorrow = GetTomorrow();
            Console.WriteLine($"Tomorrow will be: {tomorrow:yyyy-MM-dd}");

            // Display day of the week
            Console.WriteLine($"Today is: {today.DayOfWeek}");

            // Display first day of a specific year
            DateTime firstDay = GetFirstDayOfYear(1999);
            Console.WriteLine($"First day of 1999: {firstDay:yyyy-MM-dd}");

            // Display days in February for multiple years
            int[] years = { 2000, 2001, 2004 };
            foreach (int year in years)
            {
                int days = DateTime.DaysInMonth(year, 2);
                Console.WriteLine($"Days in February {year}: {days}");
            }
        }

        public static DateTime GetTomorrow()
        {
            return DateTime.Today.AddDays(1);
        }

        public static DateTime GetFirstDayOfYear(int year)
        {
            if (year < 1 || year > 9999)
                throw new ArgumentException("Year must be between 1 and 9999.", nameof(year));
            return new DateTime(year, 1, 1);
        }

        public void CalculateDaysSinceDate()
        {
            Console.WriteLine("Write your birth date in this format: yyyy MM dd");
            string input = Console.ReadLine();

            if (DateTime.TryParse(input, out DateTime inputDate))
            {
                DateTime now = DateTime.Now;
                TimeSpan difference = now - inputDate;
                int daysPassed = (int)Math.Floor(difference.TotalDays);

                Console.WriteLine($"You are {daysPassed} days old.");

                // Log to file
                string logMessage = $"{now:yyyy-MM-dd HH:mm:ss}: Calculated {daysPassed} days since {inputDate:yyyy-MM-dd}\n";
                File.AppendAllText("log.txt", logMessage);
            }
            else
            {
                Console.WriteLine("Wrong input.");
                File.AppendAllText("log.txt", $"{DateTime.Now:yyyy-MM-dd HH:mm:ss}: Invalid date input: {input}\n");
            }
        }
    }

    public class Exercise
    {
        public void Run()
        {
            try
            {
                DateTimeCalculator calculator = new DateTimeCalculator();
                calculator.DisplayDateInfo();
                Console.WriteLine();
                calculator.CalculateDaysSinceDate();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                File.AppendAllText("log.txt", $"{DateTime.Now:yyyy-MM-dd HH:mm:ss}: Error: {ex.Message}\n");
            }
        }
    }

    class Program
    {
        static void Main()
        {
            Exercise exercise = new Exercise();
            exercise.Run();
        }
    }
}