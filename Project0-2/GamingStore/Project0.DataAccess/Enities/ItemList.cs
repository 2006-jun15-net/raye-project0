﻿using System;
using System.Collections.Generic;

namespace Project0.DataAccess.Enities
{
    public partial class ItemList
    {
        public ItemList()
        {
            OrderInvoice = new HashSet<OrderInvoice>();
        }

        public int ItemIndex { get; set; }
        public string ItemName { get; set; }
        public string ItemDescription { get; set; }
        public decimal ItemPrice { get; set; }
        public string ItemVendor { get; set; }

        public virtual VendorList ItemVendorNavigation { get; set; }
        public virtual ICollection<OrderInvoice> OrderInvoice { get; set; }
    }
}
