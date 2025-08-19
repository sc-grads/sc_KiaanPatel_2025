using System.Collections;
namespace ArrayListC
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //declaring arry list with undefined number of objects
            ArrayList myArrayList = new ArrayList();

            ArrayList myArrayList2 = new ArrayList(100);

            myArrayList.Add(111);
            myArrayList2.Add(26);
            myArrayList2.Add(23.12);
            myArrayList2.Add(42.3);
            myArrayList2.Add(57);
            myArrayList2.Add(65);

            myArrayList.Remove(26);

            myArrayList.RemoveAt(0);

            Console.WriteLine(myArrayList.Count);

            double sum = 0;

            foreach(object obj in myArrayList)
            {
                if (obj is int)
                {
                    sum += Convert.ToDouble(obj);
                }
                else if (obj is double) 
                {
                    sum += (double)obj;
                }
            }
            Console.WriteLine(sum);
        }
    }
}
