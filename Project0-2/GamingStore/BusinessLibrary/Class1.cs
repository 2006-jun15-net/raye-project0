using Project0.DataAccess.Enities;
using System;
using System.Collections;

namespace BusinessLibrary
{
    public interface ICustomerRepository
    {
        IEnumerable GetCustomers();
        Customers GetCustomerbyId();
    }
    public class Class1
    {
    }
}
