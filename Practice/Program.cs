public class Exercise
{
    public void PrintAreas()
    {
        IShape[] shapes = new IShape[]
        {
            new Circle(5),
            new Rectangle(4, 6)

        };

        foreach (var shape in shapes)
        {
            Console.WriteLine($"Area: {shape.GetArea():F2}");
        }
    }
}

public class Circle : IShape
{
    public double Radius { get; }

    public Circle(double radius)
    {
        if (radius < 0)
            throw new ArgumentException("Radius cannot be negative.", nameof(radius));
        Radius = radius;
    }

    public double GetArea()
    {
        return Math.PI * Radius * Radius;
    }
}

public class Rectangle : IShape
{
    public double Height { get; }
    public double Width { get; }

    public Rectangle(double height, double width)
    {
        if (height < 0)
            throw new ArgumentException("Height cannot be negative.", nameof(height));
        if (width < 0)
            throw new ArgumentException("Width cannot be negative.", nameof(width));
        Height = height;
        Width = width;
    }

    public double GetArea()
    {
        return Height * Width;
    }
}
