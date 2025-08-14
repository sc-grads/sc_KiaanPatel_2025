using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassesApp
{
    
    internal class Customer
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public string ContactNumber { get; set; }

        private static int nextID = 0;
        private readonly int _id;

        private string _password;

        public string Password
        {
            set
            {
                _password = value;
            }
        }

        public int ID 
        { 
            get { return _id; } 
        }

        public Customer(string name, string address, string contactNumber)
        {
            Name = name;
            Address = address;
            ContactNumber = contactNumber;
            _id = nextID++;
        }

        public Customer(string name)
        {
            Name = name;
        }

        public Customer()
        {
            Name = "DefaultName";
            Address = "NoAddress";
            ContactNumber = "n/a";
            _id = nextID++;
        }

        public void SetDetails(string name, string address, string contactNumber = "N/a")
        {
            Name = name;
            Address = address;
            ContactNumber = contactNumber;
        }

        public static void DOSomeStuff()
        {
            Console.WriteLine("Doing some stuff");
        }

        public void GetDetails()
        {
            Console.WriteLine($"Details about customer {Name} and id {_id} and password is {_password}");
        }
    }
}
