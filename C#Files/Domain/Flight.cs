namespace Domain
{
    public class Flight
    {
        public int RemainingNumberOfSeats { get; set; }

        public Flight(int seatCapacity)
        {
            RemainingNumberOfSeats = seatCapacity;
        }

        public object? Book(string passengerEmail, int NumberofSeats)
        {
            if (NumberofSeats > this.RemainingNumberOfSeats)
                return new OverbookingError();

            RemainingNumberOfSeats -= NumberofSeats;
            return null;
        }
    }
}
