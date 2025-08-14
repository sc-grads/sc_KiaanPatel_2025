namespace ClassesApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*Car audi = new Car("A3", "Audi", true);
            Car bmw = new Car("X6", "BMW", false);

            Console.WriteLine("Please enter the brand name: ");
            audi.Brand = Console.ReadLine();
            Console.WriteLine("You entered " + audi.Brand);
            */

            /*
            Customer earl = new Customer("Earl");
            Customer frankTheTank = new Customer("Frank", "54 Jackfruit Drive", "021 654 9874");
            Console.WriteLine("Name of the customer is: " + earl.Name);
            Console.WriteLine($"Name of he customer is {frankTheTank.Name} and address is {frankTheTank.Address}. Contact is { frankTheTank.ContactNumber}");
           
            Customer cust = new Customer();
            Console.WriteLine(cust.Name);

            Car myAudi = new Car("RS3", "Audi", true);
            myAudi.Drive();
            Car myBMW = new Car("I7", "BMW", false);
            myBMW.Drive();

            cust.SetDetails("Jake", "145 Clare Road", "013 6547 896");
            cust.SetDetails("John", "670 Black Road");
            Console.WriteLine(cust.Name + cust.Address + cust.ContactNumber);
            Customer.DOSomeStuff();


            Car car1 = new Car();
            Car car2 = new Car("A4", "Audi", false);
            Console.WriteLine(Car.NumOfCars);

            */

            Customer cust = new Customer();
            Customer cust1 = new Customer("John Doe", "Drive", "0218798211");
            Customer cust2 = new Customer("Greg", "walk", "black");

            cust.GetDetails();
            cust1.GetDetails();
            cust2.GetDetails();

            Console.WriteLine("Id is: " + cust1.ID);

            cust2.Password = "asdfsadf2222";
            //Console.WriteLine(cust2.Password);
            cust2.GetDetails();
        }


    }
}
