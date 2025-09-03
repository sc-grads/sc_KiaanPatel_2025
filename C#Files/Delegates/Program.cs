namespace Delegates
{
    internal class Program
    {
        //declare delegate
        public delegate void Notify(string message);
        static void Main(string[] args)
        {
            Notify notifyDelegate = ShowMessage;

            notifyDelegate("Hello Delegate");
        }
        static void ShowMessage(string message)
        {
            Console.WriteLine(message);
        }

    }
    
}
