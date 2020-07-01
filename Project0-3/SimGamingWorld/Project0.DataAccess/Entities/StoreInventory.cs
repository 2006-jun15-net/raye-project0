using System;
using System.Collections.Generic;

namespace Project0.DataAccess.Entities
{
    public partial class StoreInventory
    {
        public int StoreInventoryPk { get; set; }
        public int? StoreNumber { get; set; }
        public int ItemId { get; set; }
        public int? Quantity { get; set; }

        public virtual ItemList Item { get; set; }
        public virtual Stores StoreNumberNavigation { get; set; }
    }
}
