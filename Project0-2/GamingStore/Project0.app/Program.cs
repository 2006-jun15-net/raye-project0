using System;
using Microsoft.Extensions.Logging;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Project0.DataAccess.Enities;

namespace Project0.app
{
    class Program
    {
        public static readonly ILoggerFactory MyLogFactory = LoggerFactory.Create(builder => builder.AddConsole());

        public static readonly DbContextOptions<Project0Context> Options = new DbContextOptionsBuilder<Project0Context>()
            .UseLoggerFactory(MyLogFactory)
            .UseSqlServer(SecretConfiguration.ConnectionString)
            .Options;

        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");

            using var context = new Project0Context(Options);

            var emp = context.Employees
                .Select(c => new { c.LastName, c.FirstName, c.EmployeeId})
                .ToList();

            foreach (var x in emp)
                Console.WriteLine(x);
        }
    }
}
