using System;
using System.Collections.Generic;

namespace Project0.DataAccess.Entities
{
    public partial class OrderInvoice
    {
        public int InvoiceLineNumber { get; set; }
        public int? OrderIndex { get; set; }
        public int? ItemId { get; set; }
        public int? ItemQuantity { get; set; }

        public virtual ItemList Item { get; set; }
        public virtual Orders OrderIndexNavigation { get; set; }
    }
}
