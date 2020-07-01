using BusinessLibrary;
using System;
using Xunit;

namespace UnitTesting
{
    public class CustomerFunctionality
    {
        readonly CustomerRepository Customer = new CustomerRepository();
        [Fact]
        public void LastName_Empty_ThrowsException()
        {
            //Assert.ThrowsAny<ArgumentException>(()
        }
    }
}
