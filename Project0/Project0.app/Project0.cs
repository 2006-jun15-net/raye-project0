using System;
using Microsoft.Extensions.Logging;
using Microsoft.EntityFrameworkCore;
using Project0.DataAccess.Entities;
using System.Linq;
using System.Collections.Generic;

namespace Project0.app
{
    class Program
    {
        public static readonly ILoggerFactory MyLogFactory = LoggerFactory.Create(LogBuilder => LogBuilder.AddConsole());

        public static readonly DbContextOptions<Project0_20200626T0703ZContext> Options =
            new DbContextOptionsBuilder<Project0_20200626T0703ZContext>().UseLoggerFactory(MyLogFactory)
            .UseSqlServer(SecretConfiguration.ConnectionString).Options;

        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            using var context = new Project0_20200626T0703ZContext(Options);

            List<Customers> cust = context.Customers
                .FromSqlInterpolated($"SELECT FirstName, LastName, Email FROM Customers")
                .OrderBy(ln => ln.LastName).ToList();

            foreach (var x in cust)
                Console.WriteLine(cust);
                

            Console.WriteLine("Program Complete");
        }
    }
}

//Place orders to store locations for customers
//Add new customer
//Search by customer name
//display details of an order
//display all order history for location
//display all order history for customer
//input validation
//exception handling
//persistant data (no hardcoding)

//Optional:
//  multiple sorts on order history
//  customer recommendations based on order history
//  customer has preferred store
//  display statistics on order history
//  asynchronous network
//  logging of exceptions, sql, and other events to file
//  serialize and deserialize data to disk
//  Special deals on orders/other business promotions

//Design Requirements:
//  Use EF core & database first
//  Azure Sql DB in 3rd normal form
//  Include SQL create and original data insert scripts
//  Don't use public fields
//  Define and use at least one interface

//Other Requirements
//  Document with XML summary
//  Class library with all business logic and domain classes (customer, product, etc.)
//  Customer has at least first & last name 
//  Order has:
//    Store location
//    Customer
//    Order time
//    Can have multiple invoice lines
//    Rejects orders of unreasonable amounts
//  Locations:
//    Has inventory
//    Inventory decreases based on orders placed
//    Rejects orders that can't be fufilled with current inventory
//  At least 10 test methods