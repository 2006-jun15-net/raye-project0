using System;
using System.Collections.Generic;

namespace Project0.dataaccess.Entities
{
    public partial class ItemList
    {
        public int ItemIndex { get; set; }
        public string ItemName { get; set; }
        public string ItemDescription { get; set; }
        public decimal ItemPrice { get; set; }
        public string ItemVendor { get; set; }
    }
}
