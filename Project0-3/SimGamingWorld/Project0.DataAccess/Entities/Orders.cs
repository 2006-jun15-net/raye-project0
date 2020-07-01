using System;
using System.Collections.Generic;

namespace Project0.DataAccess.Entities
{
    public partial class Orders
    {
        public Orders()
        {
            OrderInvoice = new HashSet<OrderInvoice>();
        }

        public int OrderIndex { get; set; }
        public string OrderId { get; set; }
        public int CustomerId { get; set; }
        public DateTime? OrderDateTime { get; set; }
        public int OrderStatus { get; set; }
        public DateTime? OrderStatusDate { get; set; }

        public virtual Customers Customer { get; set; }
        public virtual ICollection<OrderInvoice> OrderInvoice { get; set; }
    }
}
