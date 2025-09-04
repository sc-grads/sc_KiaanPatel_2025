using System;
using System.IO;

namespace Coding.Exercise
{
    public interface IMathCalculator
    {
        void PerformMathOperations();
    }

    public struct MathCalculator : IMathCalculator
    {
        private readonly string _logFilePath;

        public MathCalculator(string logFilePath)
        {
            _logFilePath = logFilePath ?? throw new ArgumentNullException(nameof(logFilePath));
        }

        public void PerformMathOperations()
        {
            DateTime now = DateTime.Now;
            try
            {
                // Ceiling: Round up 15.3
                double ceilingResult = Math.Ceiling(15.3);
                Console.WriteLine($"Ceiling of 15.3: {ceilingResult}");
                Log($"Ceiling of 15.3: {ceilingResult}", now);

                // Floor: Round down 15.3
                double floorResult = Math.Floor(15.3);
                Console.WriteLine($"Floor of 15.3: {floorResult}");
                Log($"Floor of 15.3: {floorResult}", now);

                // Min: Smaller of 13 and 9
                int num1 = 13, num2 = 9;
                int minResult = Math.Min(num1, num2);
                Console.WriteLine($"Lower of {num1} and {num2}: {minResult}");
                Log($"Lower of {num1} and {num2}: {minResult}", now);

                // Max: Larger of 13 and 9
                int maxResult = Math.Max(num1, num2);
                Console.WriteLine($"Higher of {num1} and {num2}: {maxResult}");
                Log($"Higher of {num1} and {num2}: {maxResult}", now);

                // Pow: 3 to the power of 5
                double powResult = Math.Pow(3, 5);
                Console.WriteLine($"3 to the power of 5: {powResult}");
                Log($"3 to the power of 5: {powResult}", now);

                // PI: Display Math.PI
                Console.WriteLine($"PI is: {Math.PI:F12}");
                Log($"PI is: {Math.PI:F12}", now);

                // Sqrt: Square root of 25
                double sqrtResult = Math.Sqrt(25);
                Console.WriteLine($"Square root of 25: {sqrtResult:F2}");
                Log($"Square root of 25: {sqrtResult:F2}", now);

                // Abs: Absolute value of -25
                double absResult = Math.Abs(-25);
                Console.WriteLine($"Always positive (-25): {absResult}");
                Log($"Always positive (-25): {absResult}", now);

                // Cos: Cosine of 1 radian
                double cosResult = Math.Cos(1);
                Console.WriteLine($"Cos of 1 radian: {cosResult:F2}");
                Log($"Cos of 1 radian: {cosResult:F2}", now);

                // Circle Area (tie to previous query)
                double radius = 5;
                double circleArea = Math.PI * Math.Pow(radius, 2);
                Console.WriteLine($"Area of circle with radius {radius}: {circleArea:F2}");
                Log($"Area of circle with radius {radius}: {circleArea:F2}", now);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                Log($"Error: {ex.Message}", now);
            }
        }

        private void Log(string message, DateTime timestamp)
        {
            File.AppendAllText(_logFilePath, $"{timestamp:yyyy-MM-dd HH:mm:ss}: {message}\n");
        }
    }

    public class Exercise
    {
        public void Run()
        {
            MathCalculator calculator = new MathCalculator("math_log.txt");
            calculator.PerformMathOperations();
        }
    }

    class Program
    {
        static void Main()
        {
            Exercise exercise = new Exercise();
            exercise.Run();
            Console.WriteLine("\nPress any key to exit...");
            Console.ReadLine(); // Keep console open, as per transcript
        }
    }
}