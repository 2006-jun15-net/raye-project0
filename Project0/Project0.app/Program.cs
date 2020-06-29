using System;

namespace Project0.app
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

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