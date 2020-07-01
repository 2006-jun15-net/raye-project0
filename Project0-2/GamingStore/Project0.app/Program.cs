using System;
using Microsoft.Extensions.Logging;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Project0.DataAccess.Enities;
using BusinessLibrary;
using System.Runtime.CompilerServices;

namespace Project0.app
{
    class Program
    {
        public static readonly ILoggerFactory MyLogFactory = LoggerFactory.Create(builder => builder.AddConsole());

        public static readonly DbContextOptions<Project0Context> Options = new DbContextOptionsBuilder<Project0Context>()
            //.UseLoggerFactory(MyLogFactory)
            .UseSqlServer(SecretConfiguration.ConnectionString)
            .Options;

        public char GetScreenSelection()
        {
            Console.WriteLine("Welcome to Game World!");
            int escape = 0;
            do
            {
                Console.WriteLine("Are you a customer (enter \"C\"), or Are you an employee (enter \"E\")?");
                char temp = Console.ReadLine().ToLower().First();
                if (temp == 'c' || temp == 'e')
                    return temp;
                escape++;
            } while (escape < 4);
            return 'z';
        }

        static void Main(string[] args)
        {

            var Screen = new Program().GetScreenSelection();

            using var context = new Project0Context(Options);

            if (Screen == 'e')
            {
                var employee = context.Employees.Select(c => new {c.EmployeeId, c.FirstName, c.LastName }).ToList();
                var empId = context.Employees.Select(c => c.EmployeeId).ToList();

                Console.WriteLine("Please enter your employee id:");
                string IdEntered = Console.ReadLine();

                if (empId.Contains(Int32.Parse(IdEntered)))
                    {
                    Console.WriteLine($"Welcome " + IdEntered);

                    Console.WriteLine("Please select the function you would like to use:\n" +
                        "1: Add New Customer.\n" +
                        "2: Search For a Customer by (Last) Name\n" +
                        "3: Search For a Customer by Id Number\n" +
                        "4: Place an Order for a Customer\n" +
                        "4: Display Order History for a Store\n" +
                        "5: Display the Company Directory");
                    int menuChoice = Int32.Parse(Console.ReadLine());

                    Console.WriteLine(menuChoice);

                    var Customer = new CustomerRepository();

                    switch (menuChoice)
                    {
                        case 1:
                            Customer.InsertCustomer();
                            break;
                        case 2:
                            Customer.GetCustomerbyLastName();
                            break;
                        default:
                            Console.WriteLine("Error");
                            break;
                    }
                        //var emp = context.Employees
                        //    .Select(c => new { c.LastName, c.FirstName, c.EmployeeId })
                        //    .ToList();

                        //foreach (var x in emp)
                        //    Console.WriteLine(x);

                    }

                context.SaveChanges();

                Console.WriteLine("Program Completed.");
            }
        }
    }
}
