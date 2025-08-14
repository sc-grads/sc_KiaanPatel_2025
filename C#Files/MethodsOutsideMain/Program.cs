namespace OldStyle
{
    internal class Program
    {
        static int myResult;
        public static void Main(string[] args)
        {
            Console.WriteLine("Enter in a number: ");
            int result = int.Parse(Console.ReadLine());

            myResult = addValues(result, 5);

            Console.WriteLine(myResult);
            Console.WriteLine(subtractValues(result, 5));
        }
    
        static int addValues(int num1, int num2)
        {
            int sum = num1 + num2;
            return sum;
        }


        static int subtractValues(int num1, int num2)
        {
            int result = num1 - num2;
            return result;
        }
    }
}