using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Project0.DataAccess.Enities;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;

namespace BusinessLibrary
{
    public interface ICustomerRepository
    {
        IEnumerable GetCustomers();
        Customers GetCustomerbyId();
        IEnumerable<Customers> GetCustomerbyLastName();
        void InsertCustomer();
        void UpdateCustomer();
        void DeleteCustomer();
        void SaveCustomer();
    }
    public interface IRepository<TEntity> where TEntity : class
    {
        void Delete(TEntity entityToDelete);
        void Delete(Object id);
        IEnumerable<TEntity> Get(
            Expression<Func<TEntity, bool>> filter = null,
            Func<IQueryable<TEntity>, IOrderedQueryable<TEntity>> orderBy = null,
            string includeProperties = "");
        TEntity GetById(Object Id);
        IEnumerable<TEntity> GetWithRawSql(string Query, params Object[] Parameters);
        void Insert(TEntity entity);
        void Update(TEntity entityToUpdate);
    }
    public class CustomerRepository:ICustomerRepository
    {
        public static readonly DbContextOptions<Project0Context> Options = new DbContextOptionsBuilder<Project0Context>()
        //.UseLoggerFactory(MyLogFactory)
        .UseSqlServer(SecretConfiguration.ConnectionString)
        .Options;
        // private readonly ICollection<Customers> _tempCustomer;

        //public ICollection<Customers> TempCustomer => _tempCustomer;

        public ICollection<Customers> tempCustomer = new List<Customers>();

        public void DeleteCustomer()
        {
            throw new NotImplementedException();
        }

        public Customers GetCustomerbyId()
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Customers> GetCustomerbyLastName()
        {
            Console.Write("\nEnter a last name to search customer database: ");
            string tempLastName = Console.ReadLine();
            using (var context = new Project0Context())
            {
                var query = from Customers in context.Customers where Customers.LastName == tempLastName select Customers;
                var tempCustomer = new Customers();
                //tempCustomerList = query.FirstOrDefault;
                tempCustomer = query.FirstOrDefault();
                return (IEnumerable<Customers>)tempCustomer;
            }
            //throw new NotImplementedException();
        }

        public IEnumerable GetCustomers()
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// InsertCustomer adds a new customer at the highest index of the table
        /// </summary>
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
                Customers customer = new Customers();


                customer.FirstName = FirstName;
                customer.LastName = LastName;
                customer.StreetAddress = StreetAddress;
                customer.City = City;
                customer.State = State;
                customer.Zip = Zip;
                customer.Email = email;
                customer.Phone = phone;



                context.Customers.Add(customer);
                context.SaveChanges();

            }

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
