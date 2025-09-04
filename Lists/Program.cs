namespace ListsApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*
            // Declaring a list and initializing
            List<string> colors =
            [
                // Adding items to the list
                "red",
                "blue",
                "green",
                "red",
            ];

            colors.Add("blue");

            Console.WriteLine("Current colors in the colors list!");
            foreach (string color in colors)
            {
                Console.WriteLine(color);
            }

            bool isDeletingSuccessful = colors.Remove("red");
            while (isDeletingSuccessful)
            {
                isDeletingSuccessful = colors.Remove("red");
            }


            Console.WriteLine("Current colors in the colors list!");
            foreach (string color in colors)
            {
                Console.WriteLine(color);
            }
            */

            /*
            List<int> nums = new List<int> { 10, 3, 4, 5, 9, 25, 81, 15};
            nums.Sort();

            foreach(int num in nums)
            {
                Console.Write($"{num} ");
            }

            bool hasLargeNumber = nums.Any(x => x > 20);
            
            if (hasLargeNumber)
            {
                Console.WriteLine("There are large numbers in the list");
            }
            else
            {
                Console.WriteLine("There are no large numbers in the list");
            }

                List<int> higherThanTen = nums.FindAll(x => x > 10);
            Console.WriteLine("\nNumbers greater than 10: ");
            foreach (int num in higherThanTen)
            {
                Console.Write($"{num} ");
            }
            */

            List<Product> products = new List<Product>
            {
                new Product { Name = "Apple", Price = 0.80},
                new Product { Name = "Banana", Price = 0.30},
                new Product { Name = "Cherry", Price = 0.50}
            };

            List<Product> cheapProducts = products.Where(p => p.Price < 1.0).ToList();
            
            foreach(Product p in cheapProducts)
            {
                Console.WriteLine($"Cheap Products : {p.Name}");
            }

            products.Add(new Product { Name = "Berries", Price = 1.20 });

            foreach (Product product in products)
            {
                Console.WriteLine($"Product name: {product.Name} for R{product.Price}");
            }

            Console.ReadKey();
        }
    }

    public class Product
    {
        public string Name { get; set; }
        public double Price { get; set; }
    }
}
