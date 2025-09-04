namespace Dictionaries
{
    internal class Program
    {
        static void Main(string[] args)
        {


            Dictionary<int, string> employee = new Dictionary<int, string>();
            employee.Add(101, "John Doe");
            employee.Add(102, "Bob Smith");
            employee.Add(103, "Rob Smith");
            employee.Add(104, "Jade Callux");
            employee.Add(105, "Bo Doe");


            //accessing items in dictionary
            string name = employee[101];
            Console.WriteLine(name);

            //updating dictionary
            employee[102] = "Kane Smith";

            employee.Remove(101);

            //iterating over dictionary
            foreach (KeyValuePair<int, string> kvp in employee)
            {
                Console.WriteLine($"ID: {kvp.Key} Name: {kvp.Value}");
            }

            

            if (!employee.ContainsKey(104))
            {
                employee.Add(104, "Mike Man");
            }

            int counter = 101;
            while (employee.ContainsKey(counter))
            {
                counter++;
            }

            employee.Add(counter, "Bob Michael");
            

            foreach (KeyValuePair<int, string> kvp in employee)
            {
                Console.WriteLine($"ID: {kvp.Key} Name: {kvp.Value}");
            }
        }
    }
}
