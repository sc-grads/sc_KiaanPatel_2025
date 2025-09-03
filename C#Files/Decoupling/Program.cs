﻿namespace InterfacesApp
{
    public interface ILogger
    {
        void Log(string message);
    }

    public class FileLogger : ILogger
    {
        public void Log(string message)
        {
            // The @ sign in C# is used to denote a verbatim string literal
            string directoryPath = @"C:\Logs";
            string filePath = Path.Combine(directoryPath, "log.txt");

            if (!Directory.Exists(directoryPath))
            {
                Directory.CreateDirectory(directoryPath);
            }


            File.AppendAllText(filePath, message + "\n");
        }
    }

    public class DatabaseLogger : ILogger
    {
        public void Log(string message)
        {
            // Implement the logic to log a message to a database
            Console.WriteLine($"Logging to database. {message}");
        }
    }

    public class Application
    {
        private readonly ILogger _logger;
        public Application(ILogger logger)
        {
            _logger = logger;
        }

        public void DoWork()
        {
            _logger.Log("Work started");
            // DO ALL THE WORK!
            _logger.Log("WORK DONE!");
        }
    }

    /*
     Decoupling: The Application class depends on the 
    ILogger interface rather than specific implementations 
    like FileLogger or DatabaseLogger. 
    This means you can easily switch the logging mechanism 
    without changing the Application class. 
    */


    internal class Program
    {
        static void Main(string[] args)
        {
            ILogger fileLogger = new FileLogger();
            Application app = new Application(fileLogger);
            app.DoWork();

            ILogger dbLogger = new DatabaseLogger();
            app = new Application(dbLogger);
            app.DoWork();


            Console.ReadKey();
        }
    }



}
