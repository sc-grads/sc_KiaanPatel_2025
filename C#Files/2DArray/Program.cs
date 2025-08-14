int[,] twoDArr = new int[3, 3];

int[,,] threeDArr = new int[3, 3, 3];

int[,] arrIni2D = { { 1, 2 }, { 3, 4 } };
Console.WriteLine(arrIni2D[0,1]);

arrIni2D[0, 0] = 5;
Console.WriteLine(arrIni2D[0,0]);

string[,] tictac =
{
    {"O", "X", "O" },
    {"X", "O", "O" },
    {"X", "X", "X" }
};

Console.WriteLine(tictac[2, 2]);


int[] array = [1, 2, 3, 4, 5];
foreach (int i in array)
{
    Console.WriteLine(array[i - 1]);
}

int[,] arr = new int[3, 3]
        {
            {1, 2, 3},
            {4, 5, 6},
            {7, 8, 9}
        };

// Calculate and print sum of each row
for (int row = 0; row < 3; row++)
{
    int sum = 0;
    for (int col = 0; col < 3; col++)
    {
        sum += arr[row, col];
    }
    Console.WriteLine(sum);
}