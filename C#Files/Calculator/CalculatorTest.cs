using Domains;
using FluentAssertions;

namespace CalculatorTest

{
    public class CalculatorTest
    {
        [Fact]
        public void SumOf2and2is4()
        => new Calculator()
            .Sum(2, 2)
            .Should().Be(4);        
    }
}