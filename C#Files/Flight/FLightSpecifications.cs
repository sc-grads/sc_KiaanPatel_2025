using Domain;
using FluentAssertions;

namespace FlightTest
{
    public class FLightSpecifications
    {
        [Fact]
        public void Booking_Reduces_Number_of_Seats()
        {
            var flight = new Flight(seatCapacity: 3);
            flight.Book("kiaanpatel@gmail.com", 1);
            flight.RemainingNumberOfSeats.Should().Be(2);
        }

        [Fact]
        public void Avoid_Overbooking()
        {
            var flight = new Flight(seatCapacity: 3);

            var error = flight.Book("kiaanpatel@gmail.com", 4);

            error.Should().BeOfType<OverbookingError>();
        }
    }
}