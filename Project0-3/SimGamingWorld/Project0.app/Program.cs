using BusinessLibrary;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Project0.DataAccess.Entities;
using System;
using System.Linq;
using System.Runtime.CompilerServices;

namespace Project0.app
{
    class Program
    {
        //public static readonly ILoggerFactory MyLogFactory = LoggerFactory.Create(builder => builder.AddConsole());

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
            var screenIo = new Program().GetScreenSelection();

            if (screenIo == 'e')
            {
                Console.WriteLine("Please enter your employee id:");
                int IdEntered = Int32.Parse(Console.ReadLine());

                using (var context = new Project0Context(Options))
                {
                    var query = from Employees in context.Employees where Employees.EmployeeId == IdEntered select Employees;
                    var employee = query.FirstOrDefault();
                    Console.WriteLine("Welcome " + employee.FirstName);
                    Console.WriteLine("Please select the function you would like to use:\n"
                        + "1: Add New Customer.\n"
                        + "2: Search For a Customer by (Last) Name\n"
                        + "3: Search For a Customer by Id Number\n"
                        + "4: Place an Order for a Customer\n"
                        + "5: Display a Store's Inventory\n"
                        + "6: Display Order History for a Store\n"
                        + "7: Display the Company Directory");
                    int menuChoice = int.Parse(Console.ReadLine());

                    switch(menuChoice)
                    {
                        case 1:
                            var Customer = new CustomerRepository();
                            Customer.InsertCustomer();
                            break;
                        case 2:
                            break;
                        case 3:
                            break;
                        case 4:
                            break;
                        case 5:
                            Console.Write("\nStore List: \n");
                            var store = new Stores();
                            var query2 = from Stores in context.Stores
                                         select Stores;
                            Console.Write("\nStore Id | Store Address | City | State\n");
                            foreach(var x in query2)
                                Console.Write("{0}, {1}, {2}, {3}\n", x.StoreId, x.StoreStAddress, x.StoreCity, x.StoreState);
                            Console.Write("\nEnter Store Id: ");
                            int menuChoice2 = int.Parse(Console.ReadLine());
                            var query3 = from StoreInventory in context.StoreInventory//.Include("ItemId")
                                      //   .Where(b => b.ItemId.Equals(context.ItemList))
                                         where StoreInventory.StoreNumber == menuChoice2
                                         select StoreInventory;
                                      //   .Include("ItemId").Where(b => b.ItemId.Equals(context.ItemList));
                            //var query4 = query3.Include("ItemId").Where(b => b.ItemId.Equals(context.ItemList));

                            foreach (var x in query3)
                            {
                                Console.Write("\n{0}\t{1}\n", x.ItemId, x.Quantity);
                            }
                            break;
                        case 6:
                            break;
                        case 7:
                            break;
                        default:
                            Console.WriteLine("Program Ends.");
                            break;
                    }
                }
            }
            else if (screenIo == 'c')
            {

            }
            else
                Console.WriteLine("Program Ends");

            Console.WriteLine("Hello World!");
        }
    }
}
