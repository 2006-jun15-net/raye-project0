using System;
using System.Collections.Generic;

namespace Project0.DataAccess.Enities
{
    public partial class Stores
    {
        public Stores()
        {
            Customers = new HashSet<Customers>();
        }

        public int StoreId { get; set; }
        public int StoreManager { get; set; }
        public string StoreStAddress { get; set; }
        public string StoreCity { get; set; }
        public string StoreState { get; set; }
        public int? StoreZip { get; set; }

        public virtual Employees StoreManagerNavigation { get; set; }
        public virtual ICollection<Customers> Customers { get; set; }
    }
}
