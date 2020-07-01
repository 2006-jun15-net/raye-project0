using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Project0.DataAccess.Entities;
using System;
using System.Collections;
using System.Collections.Generic;

namespace BusinessLibrary
{
    public interface ICustomerRepository
    {
        IEnumerable GetCustomers();
        Customers GetCustomerbyId();
        Customers GetCustomerbyLastName();
        void InsertCustomer();
        void UpdateCustomer();
        void DeleteCustomer();
        void SaveCustomer();
    }
    public class CustomerRepository : ICustomerRepository
    {
        public static readonly DbContextOptions<Project0Context> Options = new DbContextOptionsBuilder<Project0Context>()
        .UseSqlServer(SecretConfiguration.ConnectionString)
        .Options;
        public void DeleteCustomer()
        {
            throw new NotImplementedException();
        }

        public Customers GetCustomerbyId()
        {
            throw new NotImplementedException();
        }

        public Customers GetCustomerbyLastName()
        {
            throw new NotImplementedException();
        }

        public IEnumerable GetCustomers()
        {
            throw new NotImplementedException();
        }

        public void InsertCustomer()
        {
            Console.Write("\nEnter Customer's:\nFirst Name: ");
            string FirstName = Console.ReadLine();
            Console.Write("\nLast Name: ");
            string LastName = Console.ReadLine();
            Console.Write("\nStreet Address (no city/state/zip): ");
            string StreetAddress = Console.ReadLine();
            Console.Write("\nCity: ");
            string City = Console.ReadLine();
            Console.Write("\nState:");
            string State = Console.ReadLine();
            Console.Write("\nZip Code: ");
            int Zip = Int32.Parse(Console.ReadLine());
            Console.Write("\nE-mail Address: ");
            string email = Console.ReadLine();
            Console.Write("\nPhone Number: ");
            string phone = Console.ReadLine();

            using (var context = new Project0Context(Options))
            {
                var _tempCustomer = new Customers();
                _tempCustomer.FirstName = FirstName;
                _tempCustomer.LastName = LastName;
                _tempCustomer.StreetAddress = StreetAddress;
                _tempCustomer.City = City;
                _tempCustomer.State = State;
                _tempCustomer.Zip = Zip;
                _tempCustomer.Email = email;
                _tempCustomer.Phone = phone;

                context.Add(_tempCustomer);
                context.SaveChanges();
            }
            //throw new NotImplementedException();
        }

        public void SaveCustomer()
        {
            throw new NotImplementedException();
        }

        public void UpdateCustomer()
        {
            throw new NotImplementedException();
        }
    }
}
