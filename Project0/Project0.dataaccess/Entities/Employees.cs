using System;
using System.Collections.Generic;

namespace Project0.dataaccess.Entities
{
    public partial class Employees
    {
        public Employees()
        {
            InverseSupervisorNavigation = new HashSet<Employees>();
        }

        public int EmployeeId { get; set; }
        public string FirstName { get; set; }
        public string MiddleInit { get; set; }
        public string LastName { get; set; }
        public string Title { get; set; }
        public int? Supervisor { get; set; }
        public bool IsManager { get; set; }
        public bool IsActive { get; set; }

        public virtual Employees SupervisorNavigation { get; set; }
        public virtual ICollection<Employees> InverseSupervisorNavigation { get; set; }
    }
}
