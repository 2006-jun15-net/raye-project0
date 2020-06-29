using System;
using System.Collections.Generic;

namespace Project0.dataaccess.Entities
{
    public partial class Stores
    {
        public Stores()
        {
            Costumers = new HashSet<Costumers>();
        }

        public int StoreId { get; set; }
        public int StoreManager { get; set; }
        public string StoreStAddress { get; set; }
        public string StoreCity { get; set; }
        public string StoreState { get; set; }
        public int? StoreZip { get; set; }

        public virtual ICollection<Costumers> Costumers { get; set; }
    }
}
