using System;
using System.Collections.Generic;

namespace Project0.DataAccess.Entities
{
    public partial class VendorList
    {
        public VendorList()
        {
            ItemList = new HashSet<ItemList>();
        }

        public int VendorIndex { get; set; }
        public string VendorName { get; set; }
        public string VendorStAddress { get; set; }
        public string VendorCity { get; set; }
        public string VendorState { get; set; }
        public int? VendorZip { get; set; }
        public string VendorCountry { get; set; }
        public string VendorEmail { get; set; }
        public string VendorPhone { get; set; }

        public virtual ICollection<ItemList> ItemList { get; set; }
    }
}
