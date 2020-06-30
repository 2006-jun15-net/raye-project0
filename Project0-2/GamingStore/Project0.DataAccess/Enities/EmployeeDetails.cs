using System;
using System.Collections.Generic;

namespace Project0.DataAccess.Enities
{
    public partial class EmployeeDetails
    {
        public int? EmployeeId { get; set; }
        public string EmployeeEmail { get; set; }
        public string EmployeePhone { get; set; }
        public string EmployeeStAddress { get; set; }
        public string EmployeeCity { get; set; }
        public string EmployeeState { get; set; }
        public int? EmployeeZip { get; set; }
        public decimal? EmployeeSalary { get; set; }

        public virtual Employees Employee { get; set; }
    }
}
